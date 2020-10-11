//
//  Operation.h
//  1_简单工厂模式
//
//  Created by 于鹏 on 2020/10/11.
//  Copyright © 2020 ypeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 运算基类
@interface Operation : NSObject

@property (nonatomic, assign) double numberA;
@property (nonatomic, assign) double numberB;

/// 由子类实现具体算法
- (double)getResult;

@end

/// 加法运算
@interface OperationAdd : Operation

@end

/// 减法运算
@interface OperationSub : Operation

@end

/// 乘法运算
@interface OperationMulti : Operation

@end

/// 除法运算
@interface OperationDiv : Operation

@end

NS_ASSUME_NONNULL_END
