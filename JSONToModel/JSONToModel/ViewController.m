//
//  ViewController.m
//  JSONToModel
//
//  Author Andyjicw 479003573@qq.com
//
//  Created by andy on 16/6/15.
//  Copyright © 2016年 andy. All rights reserved.
//

#define TEST_URL @"http://www.chedan.org:11111/JSONToModelDemo.php"

#import "ViewController.h"
#import "NSObject+JSONToModel.h"

#import "POST.h"

#import "TestModel1.h"
#import "TestModel2.h"
#import "TestModel3.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self testModel1];
    [self testModel2];
    [self testModel3];
}

#pragma mark - testJSONDic

- (void) testModel1 {
    
    NSMutableDictionary *body = [[NSMutableDictionary alloc] init];
    [body setObject:@"demo1" forKey:@"key"];
    
    [POST withUrl:TEST_URL
             body:body
          success:^(id result) {
              TestModel1 *tmp = [TestModel1 objectWithObj:result];
              //在这里 断点查看 解析出来的tmp
              NSLog(@"%@",tmp);
          }
          failure:^(NSError *error) {
              NSLog(@"%@",error);
          }];
}

- (void) testModel2 {
    
    NSMutableDictionary *body = [[NSMutableDictionary alloc] init];
    [body setObject:@"demo2" forKey:@"key"];
    
    [POST withUrl:TEST_URL
             body:body
          success:^(id result) {
              TestModel2 *tmp = [TestModel2 objectWithObj:result];
              //在这里 断点查看 解析出来的tmp
              NSLog(@"%@",tmp);
          }
          failure:^(NSError *error) {
              NSLog(@"%@",error);
          }];
}
- (void) testModel3 {
    
    NSMutableDictionary *body = [[NSMutableDictionary alloc] init];
    [body setObject:@"demo3" forKey:@"key"];
    [POST withUrl:TEST_URL
             body:body
          success:^(id result) {
              TestModel3 *tmp = [TestModel3 objectWithObj:result];
              //在这里 断点查看 解析出来的tmp
              NSLog(@"%@",tmp.esArray[0].testObject.arr2[0]);
          }
          failure:^(NSError *error) {
              NSLog(@"%@",error);
          }];
}
@end
