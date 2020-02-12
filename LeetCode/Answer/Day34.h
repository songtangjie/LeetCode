//
//  Day34.h
//  LeetCode
//
//  Created by william on 2020/2/12.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day34 : NSObject

/*
 * 归并排序并统计
 * 时间复杂度:O(nlogn)，空间复杂度:O(n)
 */
+ (int)reversePairs:(NSMutableArray *)arr;

@end

NS_ASSUME_NONNULL_END
