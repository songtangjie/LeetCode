//
//  Day01.h
//  Whatever
//
//  Created by William on 2019/9/14.
//  Copyright © 2019 William. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day01 : NSObject

/**
 输入逆波兰式计算求值
 */
- (int)evalRPN:(NSArray<NSString *> *)strArr;

@end

NS_ASSUME_NONNULL_END
