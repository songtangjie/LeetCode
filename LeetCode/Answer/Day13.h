//
//  Day13.h
//  LeetCode
//
//  Created by william on 2020/1/16.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day13 : NSObject

/* 顶点法减少遍历次数【左下角】
 * 时间复杂度:O(m+n)，时间复杂度:O(1)
 */
- (BOOL)searchMatrix:(NSArray<NSArray *> *)matrix target:(int)target;

/* 顶点法减少遍历次数【右上角】
 * 时间复杂度:O(m+n)，时间复杂度:O(1)
 */
- (BOOL)searchMatrix2:(NSArray<NSArray *> *)matrix target:(int)target;

/* 暴力法遍历
 * 时间复杂度:O(m*n)，时间复杂度:O(1)
 */
- (BOOL)searchMatrix3:(NSArray<NSArray *> *)matrix target:(int)target;

@end

NS_ASSUME_NONNULL_END
