//
//  Day31.h
//  LeetCode
//
//  Created by william on 2020/2/9.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day31 : NSObject

/*
 * 滑动窗口法
 * 时间复杂度:O(n)，空间复杂度:O(1)
 */    
+ (int)lengthOfLongestSubstring:(NSString *)s;

@end

NS_ASSUME_NONNULL_END
