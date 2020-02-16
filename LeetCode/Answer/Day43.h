//
//  Day43.h
//  LeetCode
//
//  Created by william on 2020/2/16.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day43 : NSObject

/*
 * 双指针遍历法
 * 时间复杂度:O(n)，空间复杂度:O(n)
 */
+ (NSMutableString *)reverseWords:(NSString *)s;

@end

NS_ASSUME_NONNULL_END
