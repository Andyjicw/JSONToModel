//
//  TestModel4.m
//  JSONToModel
//
//  Author Andyjicw 479003573@qq.com
//
//  Created by andy on 16/6/23.
//  Copyright © 2016年 andy. All rights reserved.
//

#import "TestModel4.h"

@implementation TestModel4

- (NSDictionary *)objectClassInArray{
    return @{@"testArr" : [Testarr class]};
}

@end

@implementation Testobj

- (NSDictionary *)objectClassInArray{
    return @{@"testArr" : [Testarr class]};
}

@end

@implementation Testobj1

@end

@implementation Testobj2

@end

@implementation Testarr

@end

@implementation Testarrobj1

@end

@implementation Testarrobj2

@end

//以下 为重复生成的 删掉
/*
@implementation Testarr

@end


@implementation Testarrobj1

@end


@implementation Testarrobj2

@end
*/
