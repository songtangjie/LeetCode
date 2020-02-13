//
//  Day36.m
//  LeetCode
//
//  Created by william on 2020/2/13.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day36.h"

@implementation Day36

/*
 * 二分法查找临界值
 * 时间复杂度:O(logn)，空间复杂度:O(1)
 */
+ (NSMutableArray *)searchRange:(NSMutableArray *)nums target:(int)target
{
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@(-1),@(-1), nil];
    if (nums || nums.count > 0) {
        int first = [self getFirstK:nums length:(int)nums.count target:target start:0 end:(int)nums.count-1];
        int last = [self getLastK:nums length:(int)nums.count target:target start:0 end:(int)nums.count-1];
        if (first > -1 && last > -1) {
            array[0] = @(first);
            array[1] = @(last);
        }
    }
    return array;
}

//取最小的索引
+ (int)getFirstK:(NSMutableArray *)nums length:(int)length target:(int)target start:(int)start end:(int)end
{
    if (start > end) {
        return -1;
    }
    int midIndex = (start + end) >> 1;
    if ([nums[midIndex] intValue] == target) {
        if (midIndex == 0 || (midIndex > 0 && [nums[midIndex-1] intValue] != target)) {//只有一个元素或前一个值不是目标值
            return midIndex;
        } else {//前一个值也是目标值
            end = midIndex - 1;
        }
    } else if ([nums[midIndex] intValue] > target) {
        end = midIndex - 1;
    } else {
        start = midIndex + 1;
    }
    return [self getFirstK:nums length:length target:target start:start end:end];
}

//取最大的索引
+ (int)getLastK:(NSMutableArray *)nums length:(int)length target:(int)target start:(int)start end:(int)end
{
    if (start > end) {
        return -1;
    }
    int midIndex = (start + end) >> 1;
    if ([nums[midIndex] intValue] == target) {
        if (midIndex == length-1 || (midIndex < length-1 && [nums[midIndex+1] intValue] != target)) {//只有一个元素或后一个值不是目标值
            return midIndex;
        } else {//后一个值也是目标值
            start = midIndex + 1;
        }
    } else if ([nums[midIndex] intValue] > target) {
        end = midIndex - 1;
    } else {
        start = midIndex + 1;
    }
    return [self getLastK:nums length:length target:target start:start end:end];
}

@end
