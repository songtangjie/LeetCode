//
//  Day02.m
//  Whatever
//
//  Created by William on 2019/9/15.
//  Copyright © 2019 William. All rights reserved.
//

#import "Day02.h"

@implementation Day02

+ (ListNode *)mergeTwoLists:(ListNode *)l1 listNode:(ListNode *)l2
{
    //判空
    if (!l1) {
        return l2;
    }
    if (!l2) {
        return l1;
    }
    
    //构建虚节点
    ListNode *head = [[ListNode alloc]initWithVal:0];
    
    //遍历2个链表，直到一个链表已经变量完，把节点串起来加入到head虚节点上
    ListNode *cur = head;
    while (l1 && l2) {
        if (l1.val <= l2.val) {
            cur = cur.next = l1;
            l1 = l1.next;
        } else {
            cur = cur.next = l2;
            l2 = l2.next;
        }
    }
    
    //如果一个链表遍历结束，则串上剩下那个链表的值
    if (!l1) {
        cur.next = l2;
    } else {
        cur.next = l1;
    }
    
    return head.next;
}

/**
 有序的双链表合并【递归】
 */
+ (ListNode *)mergeTwoLists2:(ListNode *)l1 listNode:(ListNode *)l2
{
    //判空
    if (!l1) {
        return l2;
    }
    if (!l2) {
        return l1;
    }
    
    if (l1.val <= l2.val) {
        l1.next = [self mergeTwoLists2:l1.next listNode:l2];
        return l1;
    } else {
        l2.next = [self mergeTwoLists2:l1 listNode:l2.next];
        return l2;
    }
}

@end
