//
//  Operation.m
//  1_简单工厂模式
//
//  Created by 于鹏 on 2020/10/11.
//  Copyright © 2020 ypeng. All rights reserved.
//

#import "Operation.h"

@implementation Operation

- (double)getResult {
    double result = 0;
    return result;
}

@end

/// 加法运算
@implementation OperationAdd

- (double)getResult {
    double result = 0;
    result = self.numberA + self.numberB;
    return result;
}

@end

/// 减法运算
@implementation OperationSub

- (double)getResult {
    double result = 0;
    result = self.numberA - self.numberB;
    return result;
}

@end

/// 乘法运算
@implementation OperationMulti

- (double)getResult {
    double result = 0;
    result = self.numberA * self.numberB;
    return result;
}

@end

/// 除法运算
@implementation OperationDiv

- (double)getResult {
    double result = 0;
    if (self.numberB == 0) {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"除数不能为0" userInfo:nil];
    }
    result = self.numberA / self.numberB;
    return result;
}

@end

