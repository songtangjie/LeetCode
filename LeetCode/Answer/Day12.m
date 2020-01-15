//
//  Day12.m
//  LeetCode
//
//  Created by william on 2020/1/15.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day12.h"
#import "QuickSort.h"

@implementation Day12

/* 先排序再查找前后数字
 * 时间复杂度:O(n)，时间复杂度:O(1)或O(n)
 */
- (int)findDuplicate1:(NSMutableArray *)nums
{
    [QuickSort quickSortNums:nums low:0 high:(int)nums.count-1];
    for (int i = 1; i < nums.count; i++) {
        if ([nums[i] intValue] == [nums[i-1] intValue]) {
            return [nums[i] intValue];
        }
    }
    return -1;
}

/* 用哈希表的唯一性来判断
 * 时间复杂度:O(n)，时间复杂度:O(n)
 */
- (int)findDuplicate2:(NSMutableArray *)nums
{
    NSMutableSet *set = [NSMutableSet new];
    for (NSNumber *num in nums) {
        if ([set containsObject:num]) {
            return [num intValue];
        }
        [set addObject:num];
    }
    return -1;
}

/* 快慢指针查找链表的环
 * 时间复杂度:O(n)，时间复杂度:O(1)
 */
- (int)findDuplicate3:(NSMutableArray *)nums
{
    int slow = [nums[0] intValue];
    int fast = [nums[[nums[0] intValue]] intValue];
    
    while (slow != fast) {
        slow = [nums[slow] intValue];
        fast = [nums[[nums[fast] intValue]] intValue];
    }
    
    int pre1 = 0;
    int pre2 = slow;
    while (pre1 != pre2) {
        pre1 = [nums[pre1] intValue];
        pre2 = [nums[pre2] intValue];
    }
    return pre1;
}

@end
