//
//  JSONArrModel.h
//  TestModel2
//
//  Author Andyjicw 479003573@qq.com
//
//  Created by andy on 16/6/15.
//  Copyright © 2016年 andy. All rights reserved.
//

#import <Foundation/Foundation.h>

@class model;

@interface TestModel2 : NSObject

@property (nonatomic, strong) NSArray<model *> *modelArr;

@end

@interface model : NSObject

@property (nonatomic, copy) NSString *classes;

@property (nonatomic, copy) NSString *set_name;

@property (nonatomic, copy) NSString *group;

@property (nonatomic, copy) NSString *file_ext;

@property (nonatomic, copy) NSString *pic_count;

@property (nonatomic, copy) NSString *pic_id;

@property (nonatomic, copy) NSString *test;

@end

/*
 
 [
    {
        "set_name": "www.27270.com",
        "classes": "xieemanhua",
        "group": "a560a5616b2a432eb18047ca7fe512f4",
        "file_ext": ".jpg",
        "pic_count": "9",
        "pic_id": "1"
    },
    {
        "set_name": "www.27270.com",
        "classes": "xieemanhua",
        "group": "bc7d22fd07b0bb99457a626ce7bf867b",
        "file_ext": ".jpg",
        "pic_count": "7",
        "pic_id": "2"
    }
 ]
 
 */