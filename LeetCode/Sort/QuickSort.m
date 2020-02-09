//
//  QuickSort.m
//  Whatever
//
//  Created by william on 2019/9/21.
//  Copyright © 2019 William. All rights reserved.
//

#import "QuickSort.h"
#import "ListNode.h"

@implementation QuickSort

+ (void)quickSort:(NSMutableArray<ListNode *> *)m low:(int)low high:(int)high
{
    if (low >= high) {
        return;
    }
    int i = low;
    int j = high;
    ListNode *key = m[i];
    
    while (i<j) {
        while (i<j && m[j].val >= key.val) {
            j--;
        }
        if (i == j) { // 当key是目前最小的数时，会出现i=j的情况，
            break;
        }
        m[i++] = m[j]; // i++ 会减少一次m[i]和key的比较
        
        while (i < j && m[i].val<= key.val) {
            i++;
        }
        if (i == j) { // 当key是目前最大的数时(m[j]的前面)，会出现i=j的情况
            break;
        }
        m[j--] = m[i]; //j-- 会减少一次m[j]和key的比较
    }
    m[i] = key;
    [self quickSort: m low: low high: i-1];
    [self quickSort: m low: i+1 high: high];
    // NSLog(@"快速排序 %@",m);
}

// 整数快速排序
+ (void)quickSortNums:(NSMutableArray *)m low:(int)low high:(int)high
{
    if (low >= high) {
        return;
    }
    int i = low;
    int j = high;
    int key = [m[i] intValue];
    
    while (i<j) {
        while (i<j && [m[j] intValue] >= key) {
            j--;
        }
        if (i == j) { // 当key是目前最小的数时，会出现i=j的情况，
            break;
        }
        m[i++] = m[j]; // i++ 会减少一次m[i]和key的比较
        
        while (i < j && [m[i] intValue] <= key) {
            i++;
        }
        if (i == j) { // 当key是目前最大的数时(m[j]的前面)，会出现i=j的情况
            break;
        }
        m[j--] = m[i]; //j-- 会减少一次m[j]和key的比较
    }
    m[i] = [NSNumber numberWithInt:key];
    [self quickSortNums: m low: low high: i-1];
    [self quickSortNums: m low: i+1 high: high];
    
//     NSLog(@"快速排序 %@",m);
}

@end
