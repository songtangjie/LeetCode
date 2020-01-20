//
//  Day15.h
//  LeetCode
//
//  Created by william on 2020/1/17.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day15 : NSObject

/* 二分查找，双指针
 * 时间复杂度:O(logn)，空间复杂度:O(1)
 * 本解法适用于有重复数字
 */
+ (int)findMin:(NSArray *)nums;

/* 二分查找，双指针
 * 时间复杂度:O(logn)，空间复杂度:O(1)
 * 本解法适用于没有重复数字
 */
+ (int)findMin1:(NSArray *)nums;

@end

NS_ASSUME_NONNULL_END
