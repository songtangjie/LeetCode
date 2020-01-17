//
//  Day15.m
//  LeetCode
//
//  Created by william on 2020/1/17.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day15.h"

@implementation Day15

/* 二分查找，双指针
* 时间复杂度:O(logn)，空间复杂度:O(1)
* 本解法适用于有重复数字
*/
- (int)findMin:(NSArray *)nums
{
    if (nums.count == 1) {
        return [[nums firstObject] intValue];
    }
    
    int pre = 0;
    int last = (int)(nums.count - 1);
    int mid = pre;
    
    while (nums[pre] >= nums[last]) {
        if (last - pre == 1) {
            mid = last;
            break;
        }
        
        mid = (pre + last) / 2;
        
        //如果出现重复数字，则顺序遍历查找
        if (nums[pre] == nums[last] && nums[pre] == nums[mid]) {
            int result = [nums[pre] intValue];
            for (int i = pre+1; i <= last ; i++) {
                if (result > [nums[i] intValue]) {
                    result = [nums[i] intValue];
                }
            }
            return result;
        }
        
        if ([nums[mid] intValue] >= [nums[pre] intValue]) {
            pre = mid;
        } else if ([nums[mid] intValue] <= [nums[last] intValue]) {
            last = mid;
        }
    }
    
    return [nums[mid] intValue];
}

/* 二分查找，双指针
 * 时间复杂度:O(logn)，空间复杂度:O(1)
 * 本解法适用于没有重复数字
 */
- (int)findMin1:(NSArray *)nums
{
    if (nums.count == 1) {
        return [[nums firstObject] intValue];
    }
    
    int pre = 0;
    int last = (int)(nums.count - 1);
    int mid = pre;
    
    while (nums[pre] >= nums[last]) {
        if (last - pre == 1) {
            mid = last;
            break;
        }
        
        mid = (pre + last) / 2;
        if ([nums[mid] intValue] >= [nums[pre] intValue]) {
            pre = mid;
        } else if ([nums[mid] intValue] <= [nums[last] intValue]) {
            last = mid;
        }
    }
    
    return [nums[mid] intValue];
}

@end
