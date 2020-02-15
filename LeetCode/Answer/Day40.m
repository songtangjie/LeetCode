//
//  Day40.m
//  LeetCode
//
//  Created by william on 2020/2/15.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day40.h"

@implementation Day40

/*
 * 两个掩码异或位运算
 * 时间复杂度:O(n)，空间复杂度:O(1)
 */

+ (NSArray *)singleNumber:(NSArray *)nums
{
    //x和y的差异，不会保留出现2次的数字
    int bitmask = 0;
    for (NSNumber *num in nums) {
        bitmask ^= [num intValue];
    }
    
    //提取最右边的1
    int diff = bitmask & (-bitmask);
    
    //遍历查找x
    int x = 0;
    for (NSNumber *num in nums) {
        if (([num intValue] & diff) != 0) {
            x ^= [num intValue];
        }
    }
    
    return @[@(x), @(bitmask ^ x)];
}

@end
