//
//  TestDemo1.h
//  TestModel3
//
//  Author Andyjicw 479003573@qq.com
//
//  Created by andy on 16/6/23.
//  Copyright © 2016年 andy. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Esarray,Testobject;

@interface TestModel3 : NSObject

@property (nonatomic, strong) NSArray<Esarray *> *esArray;

@end

@interface Esarray : NSObject

@property (nonatomic, copy) NSString *file_ext;

@property (nonatomic, copy) NSString *pic_id;

@property (nonatomic, copy) NSString *set_name;

@property (nonatomic, copy) NSString *classes;

@property (nonatomic, copy) NSString *group;

@property (nonatomic, copy) NSString *pic_count;

@property (nonatomic, strong) Testobject *testObject;

@end

@interface Testobject : NSObject

@property (nonatomic, strong) NSArray<NSString *> *arr1;

@property (nonatomic, strong) NSArray<NSString *> *arr2;

@end
