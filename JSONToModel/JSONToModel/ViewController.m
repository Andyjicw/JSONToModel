//
//  ViewController.m
//  JSONToModel
//
//  Author Andyjicw 479003573@qq.com
//
//  Created by andy on 16/6/15.
//  Copyright © 2016年 andy. All rights reserved.
//

#define TEST_URL @"http://220.231.200.166:8888/JSONToModelDemo.php"

#import "ViewController.h"
#import "NSObject+JSONToModel.h"

#import "POST.h"

#import "TestModel1.h"
#import "TestModel2.h"
#import "TestModel3.h"
#import "TestModel4.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 最外层是字典
    [self testModel1];
    
    // 最外层是数组
    [self testModel2];
    
    // 最外层是数组，以及多层嵌套
    [self testModel3];
    
    // 含有空(null)字段，以及多层嵌套
    [self testModel4];
}

#pragma mark - testModel1

- (void)testModel1 {
    NSMutableDictionary *body = [[NSMutableDictionary alloc] init];
    [body setObject:@"demo1" forKey:@"key"];
    [POST withUrl:TEST_URL
             body:body
          success:^(id result) {
              TestModel1 *tmp = [TestModel1 objectWithObj:result];
              NSLog(@"%@",tmp);
          }
          failure:^(NSError *error) {
              NSLog(@"%@",error);
          }];
}

#pragma mark - testModel2

- (void)testModel2 {
    NSMutableDictionary *body = [[NSMutableDictionary alloc] init];
    [body setObject:@"demo2" forKey:@"key"];
    [POST withUrl:TEST_URL
             body:body
          success:^(id result) {
              TestModel2 *tmp = [TestModel2 objectWithObj:result];
              NSLog(@"%@",tmp);
          }
          failure:^(NSError *error) {
              NSLog(@"%@",error);
          }];
}

#pragma mark - testModel3

- (void)testModel3 {
    NSMutableDictionary *body = [[NSMutableDictionary alloc] init];
    [body setObject:@"demo3" forKey:@"key"];
    [POST withUrl:TEST_URL
             body:body
          success:^(id result) {
              TestModel3 *tmp = [TestModel3 objectWithObj:result];
              NSLog(@"%@",tmp.esArray[0].testObject.arr2[0]);
          }
          failure:^(NSError *error) {
              NSLog(@"%@",error);
          }];
}

#pragma mark - testModel4

- (void)testModel4 {
    NSMutableDictionary *body = [[NSMutableDictionary alloc] init];
    [body setObject:@"demo4" forKey:@"key"];
    [POST withUrl:TEST_URL
             body:body
          success:^(id result) {
              TestModel4 *tmp = [TestModel4 objectWithObj:result];
              NSLog(@"%@",tmp);
          }
          failure:^(NSError *error) {
              NSLog(@"%@",error);
          }];
}

@end
