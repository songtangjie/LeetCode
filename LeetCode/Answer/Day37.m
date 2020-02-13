//
//  Day37.m
//  LeetCode
//
//  Created by william on 2020/2/13.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day37.h"

@implementation Day37

/*
 * 二分法查找临界值
 * 时间复杂度:O(logn)，空间复杂度:O(1)
 */
+ (int)missingNumber:(NSMutableArray *)nums
{
    if (!nums || nums.count == 0) {
        return -1;
    }
    
    int left = 0;
    int right = (int)nums.count-1;
    while (left <= right) {
        int mid = (left + right) >> 1;
        if ([nums[mid] intValue] != mid) {
            if (mid == 0 || [nums[mid-1] intValue] == mid-1) {//前面那个数是正确的,当前数不对则拿到值
                return mid;
            } else {//前区间查找
                right = mid - 1;
            }
        } else {//后区间查找
            left = mid + 1;
        }
    }
    
    if (left == (int)nums.count) {
        return (int)nums.count;
    }
    
    return -1;
}

@end
