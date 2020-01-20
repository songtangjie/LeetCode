//
//  Day14.h
//  LeetCode
//
//  Created by william on 2020/1/16.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day14 : NSObject

/* 从后往前，双指针查找插入
 * 时间复杂度:O(n+m)，时间复杂度:O(1)
 */
+ (void)merge1:(NSMutableArray *)num1 m:(int)m num2:(NSMutableArray *)nums2 n:(int)n;

/* 合并后排序
 * 时间复杂度:O((n+m)log(n+m))，时间复杂度:O(1)
 */
+ (void)merge2:(NSMutableArray *)num1 m:(int)m num2:(NSMutableArray *)nums2 n:(int)n;

@end

NS_ASSUME_NONNULL_END
