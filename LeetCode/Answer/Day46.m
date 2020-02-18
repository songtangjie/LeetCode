//
//  Day46.m
//  LeetCode
//
//  Created by william on 2020/2/18.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day46.h"

@implementation Day46

/*
 * 数学递推式f(i)=(f(i−1)+m)%i
 * 时间复杂度:O(n)，空间复杂度:O(1)
 */
+ (int)lastRemaining1:(int)n m:(int)m
{
    int last = 0;
    for (int i = 2; i <= n; i++) {
        last = (last + m) % i;
    }
    return last;
}

/*
 * 链表方式，找到则把剩余节点插入链表末尾
 * 时间复杂度:O(m*n)，空间复杂度:O(n)
 */
+ (int)lastRemaining2:(int)n m:(int)m
{
    NSMutableArray *list = [NSMutableArray arrayWithCapacity:n];
    for (int i = 0; i < n; i++) {
        [list addObject:@(i)];
    }
    
    while (list.count != 1) {
        for (int i = 0; i < m; i++) {
            //先移除第一个元素
            NSNumber *last = [list firstObject];
            [list removeObject:last];
            //把之前一个元素放入链表末尾
            if (i != m-1) {
                [list addObject:last];
            }
        }
    }
    
    //剩余最后一个元素
    return [[list firstObject] intValue];
}

@end
