//
//  Day41.m
//  LeetCode
//
//  Created by william on 2020/2/16.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day41.h"

@implementation Day41

/*
 * 双指针法
 * 时间复杂度:O(n)，空间复杂度:O(1)
 */
+ (NSMutableArray *)twoSum:(NSArray *)nums target:(int)target
{
    NSMutableArray *res = [NSMutableArray arrayWithCapacity:2];
    if (!nums) {
        return res;
    }
    int left = 0;
    int right = (int)nums.count-1;
    
    while (left < right) {
        int sum = [nums[left] intValue] + [nums[right] intValue];
        if (sum == target) {
            res[0] = nums[left];
            res[1] = nums[right];
            return res;
        } else if (sum > target) {
            right--;
        } else {
            left++;
        }
    }
    
    return res;
}

@end
