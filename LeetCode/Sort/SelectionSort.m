//
//  SelectionSort.m
//  LeetCode
//
//  Created by william on 2020/2/4.
//  Copyright © 2020 william. All rights reserved.
//

#import "SelectionSort.h"

@implementation SelectionSort

/*
 * 选择排序
 * 时间复杂度:O(n^2)，空间复杂度:O(1)
 */
+ (void)selectionSort:(NSMutableArray *)arr
{
    for (int i = 0; i < arr.count-1; i++) {
        int minIndex = i;
        for (int j = i+1; j < arr.count; j++) {
            if ([arr[minIndex] intValue] > [arr[j] intValue]) {
                minIndex = j;
            }
        }
        
        if (minIndex != i) {
            NSNumber *tmp = arr[i];
            arr[i] = arr[minIndex];
            arr[minIndex] = tmp;
        }
    }
}

@end
