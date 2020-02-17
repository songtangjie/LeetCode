//
//  Day45.m
//  LeetCode
//
//  Created by william on 2020/2/17.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day45.h"
#import "QuickSort.h"

@implementation Day45

/*
 * 先排序，大小王为0，可以替代任何数。出现对子则肯定不是顺子。
 * 时间复杂度:O(n)，空间复杂度:O(1)
 */
+ (BOOL)isStraight:(NSMutableArray *)nums
{
    //先排序
    [QuickSort quickSortNums:nums low:0 high:(int)nums.count-1];
    
    int zero = 0;
    int diff = 0;
    int flag = -1;//用于判断是第一个
    for (int i = 0; i < nums.count; i++) {
        //如果数字是0跳过
        if ([nums[i] intValue] == 0) {
            zero++;
            continue;
        }
        
        //第一个数字也跳过
        if (flag == -1) {
            flag = [nums[i] intValue];
            continue;
        }
        
        //如果是对子则不是顺子
        if ([nums[i] intValue] == [nums[i-1] intValue]) {
            return NO;
        }
        
        //记录前后2个数的差距，便于插入0
        diff += [nums[i] intValue] - [nums[i-1] intValue] - 1;
    }
    
    return diff == 0 || (diff - zero <= 0);
}

@end
