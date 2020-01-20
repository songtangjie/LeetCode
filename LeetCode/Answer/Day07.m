//
//  Day07.m
//  LeetCode
//
//  Created by william on 2019/10/13.
//  Copyright © 2019 william. All rights reserved.
//

#import "Day07.h"

@implementation Day07

+ (int)rob:(NSArray *)nums
{
    if (!nums) {
        return 0;
    }
    
    int first = 0;
    int second = 0;
    
    for (NSNumber *num in nums) {
        int temp = second;
        second = MAX([num intValue] + first, second);
        first = temp;
    }
    
    return second;
}

/// 此方法效率较差，属于斐波那契数列，大量重复计算
+ (int)rob2:(NSArray *)nums
{
    if (!nums || nums.count == 0) {
        return 0;
    }
    return [self preRob2:nums begin:(int)(nums.count-1)];
}

/// 从后往前遍历
+ (int)preRob2:(NSArray *)nums begin:(int)begin
{
    if (begin == 0) {
        return [nums[0] intValue];
    }
    if (begin == 1) {
        return MAX([nums[0] intValue], [nums[1] intValue]);
    }
    
    //取当前值和间隔一个的值
    int cur = [nums[begin] intValue] + [self preRob2:nums begin:begin-2];
    //取当前的上一个值
    int next = [self preRob2:nums begin:begin-1];
    
    return MAX(cur, next);
}

/// 从前往后遍历
+ (int)preRob:(NSArray *)nums begin:(int)begin
{
    if (begin == nums.count-1) {
        return [nums[begin] intValue];
    }
    if (begin == nums.count-2) {
        return MAX([nums[begin] intValue], [nums[begin+1] intValue]);
    }
    
    //取当前值和间隔一个的值
    int cur = [nums[begin] intValue] + [self preRob:nums begin:begin+2];
    //取当前的下一个值
    int next = [self preRob:nums begin:begin+1];
    
    return MAX(cur, next);
}

@end
