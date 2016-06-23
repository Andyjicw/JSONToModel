//
//  TestDemo1.m
//  TestModel3
//
//  Author Andyjicw 479003573@qq.com
//
//  Created by andy on 16/6/23.
//  Copyright © 2016年 andy. All rights reserved.
//

#import "TestModel3.h"

@implementation TestModel3
/*

这里要将 ESJosnFormat 生成的函数的"+"改成"-"

+ (NSDictionary *)objectClassInArray{
    return @{@"esArray" : [Esarray class]};
}

*/
- (NSDictionary *)objectClassInArray{
    return @{@"esArray" : [Esarray class]};
}

@end

@implementation Esarray

@end

@implementation Testobject

@end
