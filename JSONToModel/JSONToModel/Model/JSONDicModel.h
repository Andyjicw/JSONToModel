//
//  JSONDicModel.h
//  JSONToModel
//
//  Author Andyjicw 479003573@qq.com
//
//  Created by andy on 16/6/15.
//  Copyright © 2016年 andy. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Data,Set_Name;

@interface JSONDicModel : NSObject

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
/*
 
 {
    "data": [
        {
            "set_name": {
                "k1": "111",
                "k2": "222"
            },
            "classes": "xieemanhua",
            "group": "a560a5616b2a432eb18047ca7fe512f4",
            "file_ext": ".jpg",
            "pic_count": "9",
            "pic_id": "1"
        },
        {
 
            "set_name": {
                "k1": "111",
                "k2": "222"
            },
            "classes": "xieemanhua",
            "group": "bc7d22fd07b0bb99457a626ce7bf867b",
            "file_ext": ".jpg",
            "pic_count": "7",
            "pic_id": "2"
        }
    ]
 }
 
 */
