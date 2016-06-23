//
//  TestModel4.h
//  JSONToModel
//
//  Author Andyjicw 479003573@qq.com
//
//  Created by andy on 16/6/23.
//  Copyright © 2016年 andy. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
@class Testobj,Testobj1,Testobj2,Testarr,Testarrobj1,Testarrobj2,Testarr,Testarrobj1,Testarrobj2;
 */

@class Testobj,Testobj1,Testobj2,Testarr,Testarrobj1,Testarrobj2;

@interface TestModel4 : NSObject

@property (nonatomic, strong) NSArray<Testarr *> *testArr;

@property (nonatomic, strong) Testobj *testObj;

@end

@interface Testobj : NSObject

@property (nonatomic, strong) NSArray<Testarr *> *testArr;

@property (nonatomic, strong) Testobj1 *testObj1;

@property (nonatomic, strong) Testobj2 *testObj2;

@end

@interface Testobj1 : NSObject

@property (nonatomic, assign) BOOL testObj1item4;

@property (nonatomic, copy) NSString *testObj1item2;

@property (nonatomic, assign) NSInteger testObj1item3;

@property (nonatomic, copy) NSString *testObj1item1;

@end

@interface Testobj2 : NSObject

@property (nonatomic, copy) NSString *Obj2item2;

@property (nonatomic, copy) NSString *Obj2item3;

@property (nonatomic, copy) NSString *Obj2item1;

@end

@interface Testarr : NSObject

@property (nonatomic, strong) Testarrobj1 *testArrObj1;

@property (nonatomic, strong) Testarrobj2 *testArrObj2;

@end

@interface Testarrobj1 : NSObject

@property (nonatomic, copy) NSString *testArrObj1item2;

@property (nonatomic, assign) NSInteger testArrObj1item3;

@property (nonatomic, copy) NSString *testArrObj1item1;

@property (nonatomic, assign) BOOL testArrObj1item4;

@end

@interface Testarrobj2 : NSObject

@property (nonatomic, copy) NSString *Obj2item2;

@property (nonatomic, copy) NSString *Obj2item3;

@property (nonatomic, copy) NSString *Obj2item1;

@end

/*
@interface Testarr : NSObject

@property (nonatomic, strong) Testarrobj1 *testArrObj1;

@property (nonatomic, strong) Testarrobj2 *testArrObj2;

@end

@interface Testarrobj1 : NSObject

@property (nonatomic, copy) NSString *testArrObj1item2;

@property (nonatomic, assign) NSInteger testArrObj1item3;

@property (nonatomic, copy) NSString *testArrObj1item1;

@property (nonatomic, assign) BOOL testArrObj1item4;

@end

@interface Testarrobj2 : NSObject

@property (nonatomic, copy) NSString *Obj2item2;

@property (nonatomic, copy) NSString *Obj2item3;

@property (nonatomic, copy) NSString *Obj2item1;

@end

*/