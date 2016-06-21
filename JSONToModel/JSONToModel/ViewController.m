//
//  ViewController.m
//  JSONToModel
//
//  Author Andyjicw 479003573@qq.com
//
//  Created by andy on 16/6/15.
//  Copyright © 2016年 andy. All rights reserved.
//

#define JSONDIC_URL @"http://www.chedan.org:11111/JSONDicToModelDemo.php"
#define JSONARR_URL @"http://www.chedan.org:11111/JSONArrToModelDemo.php"

#import "ViewController.h"
#import "NSObject+JSONToModel.h"

#import "POST.h"

#import "JSONDicModel.h"
#import "JSONArrModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self testJSONDicModel];
    [self testJSONArrModel];
}

#pragma mark - testJSONDic

- (void) testJSONDicModel {
    
    [POST withUrl:JSONDIC_URL
             body:nil
          success:^(id result) {
              JSONDicModel *tmp = [JSONDicModel objectWithObj:result];
              NSLog(@"%@",tmp);
          }
          failure:^(NSError *error) {
              NSLog(@"%@",error);
          }];
}

- (void) testJSONArrModel {
    
    [POST withUrl:JSONARR_URL
             body:nil
          success:^(id result) {
              JSONArrModel *tmp = [JSONArrModel objectWithObj:result];
              NSLog(@"%@",tmp);
          }
          failure:^(NSError *error) {
              NSLog(@"%@",error);
          }];
}

@end
