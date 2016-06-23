//
//  JSONDicModel.m
//  TestModel1
//
//  Author Andyjicw 479003573@qq.com
//
//  Created by andy on 16/6/15.
//  Copyright © 2016年 andy. All rights reserved.
//

#import "TestModel1.h"

@implementation TestModel1
/*
 
这里要将 ESJosnFormat 生成的函数的"+"改成"-"
 
+ (NSDictionary *)objectClassInArray {
    return @{@"data" : [Data class]};
}
 
*/
- (NSDictionary *)objectClassInArray {
    return @{@"data" : [Data class]};
}

@end

@implementation Data

@end

@implementation Set_Name

@end
