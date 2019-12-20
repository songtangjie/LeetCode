//
//  Day11.h
//  LeetCode
//
//  Created by william on 2019/12/20.
//  Copyright © 2019 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day11 : NSObject

/* 给定一个无序的数组 nums，将它重新排列成 nums[0] < nums[1] > nums[2] < nums[3]... 的顺序。【摆动排序】
 * 先排序再穿插
 * O(logn)+O(n)
 */
- (void)wiggleSort:(NSMutableArray *)nums;

/*
 排序优化O(n)，先排序再穿插,排序用快速选择，然后将数组分为3部分：小+中+大
 */
- (void)wiggleSort2:(NSMutableArray *)nums;

@end

NS_ASSUME_NONNULL_END
