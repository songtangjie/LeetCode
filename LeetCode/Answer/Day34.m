//
//  Day34.m
//  LeetCode
//
//  Created by william on 2020/2/12.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day34.h"

@implementation Day34

/*
 * 归并排序并统计
 * 时间复杂度:O(nlogn)，空间复杂度:O(n)
 */
+ (int)reversePairs:(NSMutableArray *)arr
{
    NSMutableArray *tmp = [NSMutableArray arrayWithCapacity:arr.count];
    return [self divide:arr tmp:tmp left:0 right:(int)arr.count-1];
}

//分解
+ (int)divide:(NSMutableArray *)arr tmp:(NSMutableArray *)tmp left:(int)left right:(int)right
{
    if (left < right) {
        int mid = (left+right) >> 1;
        int leftCount = [self divide:arr tmp:tmp left:left right:mid];
        int rightCount = [self divide:arr tmp:tmp left:mid+1 right:right];
        int divideCount = leftCount + rightCount;
        
        if (arr[mid] <= arr[mid+1]) {
            return divideCount;
        }
        
        int mergeCount = [self merge:arr tmp:tmp left:left mid:mid right:right];
        return divideCount + mergeCount;
    }
    return 0;
}

//合并
+ (int)merge:(NSMutableArray *)arr tmp:(NSMutableArray *)tmp left:(int)left mid:(int)mid right:(int)right
{
    int i = left;
    int j = mid+1;
    int k = 0;
    int count = 0;
    while (i <= mid && j <= right) {
        // 此时后数组元素出列，统计逆序对，快就快在这里，一次可以统计出一个区间的个数的逆序对
        if ([arr[i] intValue] > [arr[j] intValue]) {
            count += (mid - i + 1);
        }
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
    return count;
}

@end
