//
//  NSObject+JSONToModel.h
//  JSONToModel
//
//  Created by andy on 16/6/15.
//  Copyright © 2016年 andy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (JSONToModel)

+ (instancetype ) objectWithObj:(id)obj;

- (void) setObj:(id)setObj;
- (NSDictionary *) objectClassInArray;

@end
