//
//  NSObject+JSONToModel.m
//  JSONToModel
//
//  Author Andyjicw 479003573@qq.com
//
//  Created by andy on 16/6/15.
//  Copyright © 2016年 andy. All rights reserved.
//

#import "NSObject+JSONToModel.h"
#import <objc/runtime.h>

@implementation NSObject (JSONToModel)

+ (instancetype) objectWithObj:(id)obj {
    
    NSObject *robj = [[self alloc]init];
    [robj setObj:obj];
    return robj;
}

- (void) dataInit {
    
    Class classSelf = self.class;
    while (classSelf && classSelf != [NSObject class]) {
        unsigned int outCount = 0;
        Ivar *ivars = class_copyIvarList(classSelf, &outCount);
        for (int i = 0; i < outCount; i++) {
            Ivar ivar     = ivars[i];
            NSString *key = [NSString stringWithUTF8String:ivar_getName(ivar)];
            key           = [key substringFromIndex:1];
            //直接初始化为@0（给int bool float double long等类型赋初始值）
            id value = @0;
            //获得成员变量的类型
            NSString *type = [NSString stringWithUTF8String:ivar_getTypeEncoding(ivar)];
            //如果属性是对象类型
            NSRange range  = [type rangeOfString:@"@"];
            if (range.location != NSNotFound) {
                //截取对象的类型名字
                type = [type substringWithRange:NSMakeRange(2, type.length - 3)];
                
                if ([type isEqualToString:@"NSString"]) {
                    value = @"";
                }
                if ([type isEqualToString:@"NSNumber"]) {
                    value = @0;
                }
                //排除系统的对象类型（其实就是字典转化成的自定义模型）
                if (![type hasPrefix:@"NS"]) {
                    Class class = NSClassFromString(type);
                    value = [[class alloc]init];
                } else if ([type isEqualToString:@"NSArray"]) {
                    value = @[];
                } else if ([type isEqualToString:@"NSMutableArray"]){
                    value = [NSMutableArray array];
                }
            }
            [self setValue:value forKeyPath:key];
        }
        free(ivars);
        classSelf = [classSelf superclass];
    }
}

- (void)setObj:(id)obj {
    [self dataInit];
    Class c = self.class;
    while (c && c != [NSObject class]) {
        unsigned int outCount = 0;
        Ivar *ivars = class_copyIvarList(c, &outCount);
        for (int i = 0; i < outCount; i++) {
            Ivar ivar     = ivars[i];
            NSString *key = [NSString stringWithUTF8String:ivar_getName(ivar)];
            key           = [key substringFromIndex:1];
            id value;
            if ([obj isKindOfClass:[NSDictionary class]] || [obj isKindOfClass:[NSMutableDictionary class]]) {
                if (!obj[key] || [obj[key] isKindOfClass:[NSNull class]]) {
                    continue;
                }
                // 取出字典的值
                value = obj[key];
                // 如果模型属性数量大于字典键值对数理，模型属性会被赋值为nil而报错
                if (value == nil) {
                    continue;
                }
            }
            // 获得成员变量的类型
            NSString *type = [NSString stringWithUTF8String:ivar_getTypeEncoding(ivar)];
            // 如果属性是对象类型
            NSRange range  = [type rangeOfString:@"@"];
            if (range.location != NSNotFound) {
                // 那么截取对象的名字（比如@"Xxx"，截取为Xxx）
                type = [type substringWithRange:NSMakeRange(2, type.length - 3)];
                // 排除系统的对象类型
                if (![type hasPrefix:@"NS"]) {
                    // 将对象名转换为对象的类型，将新的对象字典转模型（递归）
                    Class class = NSClassFromString(type);
                    value       = [class objectWithObj:value];
                    
                } else if ([type isEqualToString:@"NSArray"] || [type isEqualToString:@"NSMutableArray"]) {
                    if (nil == value) {
                        value = obj;
                    }
                    // 如果是数组类型，将数组中的每个模型进行字典转模型，先创建一个临时数组存放模型
                    NSMutableArray *array  = [(NSArray *)value mutableCopy];
                    NSMutableArray *mArray = [NSMutableArray array];
                    if ([self respondsToSelector:@selector(objectClassInArray)]) {
                        id class ;
                        // 获取到每个模型的类型
                        if ([[self objectClassInArray] objectForKey:key]) {
                            if (![[[self objectClassInArray] objectForKey:key] isKindOfClass:[NSNull class]]) {
                                class = [[self objectClassInArray] objectForKey:key];
                                for (int i = 0; i < array.count; i++) {
                                    [mArray addObject:[class objectWithObj:value[i]]];
                                }
                                value = mArray;
                                
                            } else {
                                value = array;
                                NSLog(@"--%@--没有检测到以%@命名的数组内元素相匹配的数据类型", NSStringFromClass(c), key);
                            }
                        } else {
                            value = array;
                            NSLog(@"--%@--没有检测到以%@命名的数组内元素相匹配的数据类型", NSStringFromClass(c), key);
                        }
                    } else {
                        value = array;
                    }
                }
            }
            // 将字典中的值设置到模型上
            [self setValue:value forKeyPath:key];
        }
        free(ivars);
        c = [c superclass];
    }
}

// 告诉数组中都是什么类型的模型对象
- (NSDictionary *)objectClassInArray {
    
    return @{};
}

@end
