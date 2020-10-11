//
//  OperationFactory.m
//  1_简单工厂模式
//
//  Created by 于鹏 on 2020/10/11.
//  Copyright © 2020 ypeng. All rights reserved.
//

#import "OperationFactory.h"
#import "Operation.h"

@implementation OperationFactory

+ (Operation *)createOperationWithOperationType:(OperationType)type {
    Operation *operation = nil;
    switch (type) {
        case OperationTypeAdd:
            operation = [[OperationAdd alloc] init];
            break;
        case OperationTypeSub:
            operation = [[OperationSub alloc] init];
            break;
        case OperationTypeMulti:
            operation = [[OperationMulti alloc] init];
            break;
        case OperationTypeDiv:
            operation = [[OperationDiv alloc] init];
            break;
    }
    return operation;
}

@end
