//
//  Day14.m
//  LeetCode
//
//  Created by william on 2020/1/16.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day14.h"
#import "QuickSort.h"

@implementation Day14

/* 从后往前，双指针查找插入
 * 时间复杂度:O(n+m)，时间复杂度:O(1)
 */
+ (void)merge1:(NSMutableArray *)num1 m:(int)m num2:(NSMutableArray *)nums2 n:(int)n
{
    //记录num1索引
    int p1 = m-1;
    //记录num2索引
    int p2 = n-1;
    //记录num1合并后的索引
    int p = m+n-1;
    
    while (p1 >= 0 && p2 >= 0) {
        //比较2个数组大的数组放入nums1后面
        num1[p--] = ([num1[p1] intValue] < [nums2[p2] intValue]) ? nums2[p2--] : num1[p1--];
    }
    
    //如果nums2数组元素比较多，则添加剩余元素
    for (int i = p2; i >= 0; i--) {
        [num1 replaceObjectAtIndex:i withObject:nums2[i]];
    }
    NSLog(@"数组%@",num1);
}

/* 合并后排序
* 时间复杂度:O((n+m)log(n+m))，时间复杂度:O(1)
*/
+ (void)merge2:(NSMutableArray *)num1 m:(int)m num2:(NSMutableArray *)nums2 n:(int)n
{
    [num1 addObjectsFromArray:nums2];
    [QuickSort quickSortNums:num1 low:0 high:(int)(num1.count-1)];
    NSLog(@"数组%@",num1);
}

@end
