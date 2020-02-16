//
//  Day42.m
//  LeetCode
//
//  Created by william on 2020/2/16.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day42.h"

@implementation Day42

/*
 * 双指针法
 * 时间复杂度:O(n)，空间复杂度:O(1)
 */
+ (NSMutableArray<NSMutableArray *> *)findContinuousSequence:(int)target
{
    NSMutableArray *res = [NSMutableArray array];
    
    int left = 1;
    int right = 2;
    int sum = 0;
    int mid = target/2 + 1;
    
    while (right <= mid && left < right) {
        if (sum == 0) {
            sum = left + right;
        }
        
        if (sum == target) {
            //构造一个新结果数组
            NSMutableArray *a = [NSMutableArray arrayWithCapacity:right-left+1];
            for (int i = left; i <= right; i++) {
                a[i-left] = @(i);
            }
            [res addObject:a];
            
            //重新查找新数组
            sum -= left;
            left++;
        } else if (sum < target) {
            right++;
            sum += right;
        } else {
            sum -= left;
            left++;
        }
    }
    
    return res;
}

@end
