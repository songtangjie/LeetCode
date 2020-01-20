//
//  Day08.h
//  LeetCode
//
//  Created by william on 2019/10/25.
//  Copyright © 2019 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day08 : NSObject

/**
 前 K 个高频元素
*/
+ (NSArray<NSNumber *> *)topKFrequent:(NSArray<NSNumber *> *)nums k:(int)k;

@end

NS_ASSUME_NONNULL_END
