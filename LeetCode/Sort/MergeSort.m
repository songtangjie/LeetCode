//
//  MergeSort.m
//  LeetCode
//
//  Created by william on 2020/2/11.
//  Copyright © 2020 william. All rights reserved.
//

#import "MergeSort.h"

@implementation MergeSort

/*
 * 归并排序
 * 时间复杂度:O(nlogn)，空间复杂度:O(1)
 */
+ (void)mergeSort:(NSMutableArray *)arr
{
    NSMutableArray *tmp = [NSMutableArray arrayWithCapacity:arr.count];
    [self divide:arr tmp:tmp left:0 right:(int)arr.count-1];
}

//分解
+ (void)divide:(NSMutableArray *)arr tmp:(NSMutableArray *)tmp left:(int)left right:(int)right
{
    if (left < right) {
        int mid = (left+right) >> 1;
        [self divide:arr tmp:tmp left:left right:mid];
        [self divide:arr tmp:tmp left:mid+1 right:right];
        [self merge:arr tmp:tmp left:left mid:mid right:right];
    }
}

//合并
+ (void)merge:(NSMutableArray *)arr tmp:(NSMutableArray *)tmp left:(int)left mid:(int)mid right:(int)right
{
    int i = left;
    int j = mid+1;
    int k = 0;
    while (i <= mid && j <= right) {
        tmp[k++] = [arr[i] intValue] <= [arr[j] intValue] ? arr[i++] : arr[j++];
    }
    
    //左边有剩余元素
    while (i <= mid) {
        tmp[k++] = arr[i++];
    }
    //右边有剩余元素
    while (j <= right) {
        tmp[k++] = arr[j++];
    }
    
    for (int l = 0; l < k; l++) {
        arr[left+l] = tmp[l];
    }
}

@end
