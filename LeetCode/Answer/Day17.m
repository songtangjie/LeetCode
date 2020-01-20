//
//  Day17.m
//  LeetCode
//
//  Created by william on 2020/1/20.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day17.h"

@implementation Day17

/* 快慢指针
 * 时间复杂度:O(L)链表节点长度，空间复杂度:O(1)
 */
+ (ListNode *)removeNthFromEnd:(ListNode *)head n:(int)n
{
    if (!head || n == 0) {
        return nil;
    }
    
    //虚节点
    ListNode *dummy = [[ListNode alloc] initWithVal:0];
    dummy.next = head;
    
    ListNode *first = dummy;
    ListNode *second = dummy;
    
    for (int i = 1; i <= n+1; i++) {
        first = first.next;
        if (!first) {
            return dummy.next;
        }
    }
    
    while (first) {
        first = first.next;
        second = second.next;
    }
    
    //找到删除节点的前一个节点
    second.next = second.next.next;
    
    return dummy.next;
}

@end
