//
//  JSONArrModel.m
//  JSONToModel
//
//  Created by andy on 16/6/15.
//  Copyright © 2016年 andy. All rights reserved.
//

#import "JSONArrModel.h"

@implementation JSONArrModel

- (NSDictionary *)objectClassInArray{
    return @{@"modelArr" : [model class]};
}

@end

@implementation model

@end


