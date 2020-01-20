//
//  Day11.m
//  LeetCode
//
//  Created by william on 2019/12/20.
//  Copyright © 2019 william. All rights reserved.
//

#import "Day11.h"
#import "QuickSort.h"

@implementation Day11

+ (void)wiggleSort:(NSMutableArray *)nums
{
    // 先排序
    [QuickSort quickSortNums:nums low:0 high:(int)(nums.count-1)];
    
    NSInteger len = nums.count;
    int i = 0;
    
    // 构造大小2部分数组
    NSArray *small = [NSArray arrayWithArray:[nums subarrayWithRange:NSMakeRange(0, len % 2 == 0 ? len / 2 : (len / 2 + 1))]];
    NSArray *big = [NSArray arrayWithArray:[nums subarrayWithRange:NSMakeRange(small.count, len-small.count)]];
    
    for (int i = 0; i < len / 2; i++) {
        // 倒序插入
        nums[2*i] = small[small.count - 1 - i];
        nums[2*i + 1] = big[big.count - 1 - i];
    }
    
    // 补中位数
    if (len % 2 != 0) {
        nums[2*i] = small[small.count - 1 - i];
    }
    
    for (NSNumber *num in nums) {
        NSLog(@"%d",[num intValue]);
    }
}

/*
 排序优化O(n)
 */
+ (void)wiggleSort2:(NSMutableArray *)nums
{
    if (nums.count < 2) {
        return;
    }
    
    NSInteger len = nums.count;
    [self quickSelect:nums begin:0 end:(int)len n:len / 2];
    int mid = [nums[len / 2] intValue];
    
    int i = 0;
    int j = 0;
    int k = (int)(len-1);
    
    // 三路并发排序
    while (j < k) {
        if ([nums[j] intValue] > mid) {
            [self swap:nums i:j j:k];
            --k;
        } else if ([nums[j] intValue] < mid) {
            [self swap:nums i:j j:i];
            ++i;
            ++j;
        } else {
            ++j;
        }
    }
    
    // 构造大小2部分数组
    NSArray *small = [NSArray arrayWithArray:[nums subarrayWithRange:NSMakeRange(0, len % 2 == 0 ? len / 2 : (len / 2 + 1))]];
    NSArray *big = [NSArray arrayWithArray:[nums subarrayWithRange:NSMakeRange(small.count, len-small.count)]];
    
    for (int i = 0; i < small.count; i++) {
        // 倒序插入
        nums[2*i] = small[small.count - 1 - i];
    }
    for (int i = 0; i < big.count; i++) {
        // 倒序插入
        nums[2*i + 1] = big[big.count - 1 - i];
    }
    
    for (NSNumber *num in nums) {
        NSLog(@"%d",[num intValue]);
    }
}

// 快速选择排序【不一定保证所有顺序，只能分三部分】
+ (void)quickSelect:(NSMutableArray *)nums begin:(int)begin end:(int)end  n:(NSInteger)n
{
    int t = [nums[end - 1] intValue];
    int i = begin;
    int j = begin;
    
    while (j < end) {
        if ([nums[j] intValue] <= t) {
            [self swap:nums i:i++ j:j++];
        } else {
            ++j;
        }
    }
    
    if (i-1 > n) {
        [self quickSelect:nums begin:begin end:i-1 n:n];
    } else if (i <= n) {
        [self quickSelect:nums begin:i end:end n:n];
    }
}

// 交换数组2个数
+ (void)swap:(NSMutableArray *)a i:(int)i j:(int)j
{
    NSNumber *temp = a[i];
    a[i] = a[j];
    a[j] = temp;
}

@end
