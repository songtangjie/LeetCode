//
//  Day27.h
//  LeetCode
//
//  Created by william on 2020/2/3.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day27 : NSObject

/*
 * 动态规划
 * 时间复杂度:O(n)，空间复杂度:O(1)
 */
+ (int)maxSubArray:(NSMutableArray *)nums;

/*
 * 贪心
 * 时间复杂度:O(n)，空间复杂度:O(1)
 */
+ (int)maxSubArray2:(NSMutableArray *)nums;

@end

NS_ASSUME_NONNULL_END
