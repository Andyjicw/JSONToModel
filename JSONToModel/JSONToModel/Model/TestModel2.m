//
//  JSONArrModel.m
//  TestModel2
//
//  Author Andyjicw 479003573@qq.com
//
//  Created by andy on 16/6/15.
//  Copyright © 2016年 andy. All rights reserved.
//

#import "TestModel2.h"

@implementation TestModel2

/*
 
这里要将 ESJosnFormat 生成的函数的"+"改成"-"
 
+ (NSDictionary *)objectClassInArray{
    return @{@"modelArr" : [model class]};
}

*/
- (NSDictionary *)objectClassInArray{
    return @{@"modelArr" : [model class]};
}

@end

@implementation model


@end


