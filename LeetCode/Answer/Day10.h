//
//  Day10.h
//  LeetCode
//
//  Created by william on 2019/11/27.
//  Copyright © 2019 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day10 : NSObject

/**
 获取字符串里所有回文子串
 暴力法【时间O(n^3),空间O(1)】
*/
+ (void)palindrome1:(NSString *)s;

/// 中心扩散法【时间O(n^2),空间O(1)】
+ (void)palindrome2:(NSString *)s;

/// 动态规划矩阵法【时间O(n^2),空间O(n^2)】
+ (void)palindrome3:(NSString *)s;

@end

NS_ASSUME_NONNULL_END
