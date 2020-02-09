//
//  BubbleSort.m
//  LeetCode
//
//  Created by william on 2020/2/4.
//  Copyright © 2020 william. All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort

/*
 * 冒泡排序
 * 时间复杂度:O(n^2)，空间复杂度:O(1)
 */
+ (void)bubbleSort:(NSMutableArray *)arr
{
    for (int i = 1; i < arr.count; i++) {
        for (int j = 0; j < arr.count - i; j++) {
            if ([arr[j] intValue] > [arr[j+1] intValue]) {
                NSNumber *tmp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = tmp;
            }
        }
    }
}

@end
