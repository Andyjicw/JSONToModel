//
//  JSONDicModel.h
//  TestModel1
//
//  Author Andyjicw 479003573@qq.com
//
//  Created by andy on 16/6/15.
//  Copyright © 2016年 andy. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Data,Set_Name;

@interface TestModel1 : NSObject

@property (nonatomic, strong) NSArray<Data *> *data;

@end

@interface Data : NSObject

@property (nonatomic, copy  ) NSString *classes;

@property (nonatomic, strong) Set_Name *set_name;

@property (nonatomic, copy  ) NSString *group;

@property (nonatomic, copy  ) NSString *file_ext;

@property (nonatomic, copy  ) NSString *pic_count;

@property (nonatomic, copy  ) NSString *pic_id;

@end

@interface Set_Name : NSObject

@property (nonatomic, copy) NSString *k2;

@property (nonatomic, copy) NSString *k1;

@end
