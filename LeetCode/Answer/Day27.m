//
//  Day27.m
//  LeetCode
//
//  Created by william on 2020/2/3.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day27.h"

@implementation Day27

/*
 * 动态规划
 * 时间复杂度:O(n)，空间复杂度:O(1)
 */
+ (int)maxSubArray:(NSMutableArray *)nums
{
    int maxSum = [nums[0] intValue];
    
    for (int i = 1; i < nums.count; i++) {
        if ([nums[i-1] intValue] > 0) {
            nums[i] = @([nums[i] intValue] + [nums[i-1] intValue]);
        }
        maxSum = MAX([nums[i] intValue], maxSum);
    }
    return maxSum;
}

/*
 * 贪心
 * 时间复杂度:O(n)，空间复杂度:O(1)
 */
+ (int)maxSubArray2:(NSMutableArray *)nums
{
    int currNum = [nums[0] intValue];
    int maxSum = [nums[0] intValue];
    
    for (int i = 1; i < nums.count; i++) {
        currNum = MAX([nums[i] intValue], currNum + [nums[i] intValue]);
        maxSum = MAX(currNum, maxSum);
    }
    return maxSum;
}

@end
