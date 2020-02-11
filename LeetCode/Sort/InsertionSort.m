//
//  InsertionSort.m
//  LeetCode
//
//  Created by william on 2020/2/11.
//  Copyright © 2020 william. All rights reserved.
//

#import "InsertionSort.h"

@implementation InsertionSort

/*
 * 插入排序
 * 时间复杂度:O(n^2)，空间复杂度:O(1)
 */
+ (void)insertionSort:(NSMutableArray *)arr
{
    for (int i = 1; i < arr.count; i++) {
        NSNumber *value = arr[i];
        int position = i;
        while (position > 0 && [arr[position - 1] intValue] > [value intValue]) {
            arr[position] = arr[position - 1];
            position--;
        }
        arr[position] = value;
    }
}

@end
