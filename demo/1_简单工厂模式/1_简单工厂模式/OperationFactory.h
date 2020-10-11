//
//  OperationFactory.h
//  1_简单工厂模式
//
//  Created by 于鹏 on 2020/10/11.
//  Copyright © 2020 ypeng. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Operation;

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, OperationType) {
    OperationTypeAdd   = 0,
    OperationTypeSub   = 1,
    OperationTypeMulti = 2,
    OperationTypeDiv   = 3,
};

@interface OperationFactory : NSObject

+ (Operation *)createOperationWithOperationType:(OperationType)type;

@end

NS_ASSUME_NONNULL_END
