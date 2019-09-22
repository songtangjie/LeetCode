//
//  Day03.m
//  Whatever
//
//  Created by william on 2019/9/22.
//  Copyright © 2019 William. All rights reserved.
//

#import "Day03.h"
#import "QuickSort.h"
#import "Day02.h"

@implementation Day03

/// 解法一：所有元素放进数组排序，然后串起来
- (ListNode *)mergeKLists:(NSMutableArray<ListNode *> *)lists
{
    if (!lists || lists.count == 0) {
        return nil;
    }
    
    //添加所有节点
    NSMutableArray<ListNode *> *nodes = [NSMutableArray array];
    for (__strong ListNode *node in lists) {
        while (node) {
            [nodes addObject:node];
            node = node.next;
        }
    }
    
    //排序
    [QuickSort quickSort:nodes low:0 high:(int)(nodes.count-1)];
    
    //串起来
    ListNode *head = [[ListNode alloc]initWithVal:0];
    ListNode *cur = head;
    
    for (__strong ListNode *node in nodes) {
        cur.next = node;
        cur = cur.next;
    }
    
    return head.next;
}

/// 解法二：遍历取出链表数组第一个节点，取最小的节点，然后串起来
- (ListNode *)mergeKLists2:(NSMutableArray<ListNode *> *)lists
{
    if (!lists || lists.count == 0) {
        return nil;
    }
    
    //串起来
    ListNode *head = [[ListNode alloc]initWithVal:0];
    ListNode *cur = head;
    
    while (YES) {
        int minIndex = -1;
        for (int i = 0; i < lists.count; i++) {
            //一个链表已经遍历完了
            if (lists[i].val == -1) {
                continue;
            }
            if (minIndex == -1 || lists[i].val < lists[minIndex].val) {
                minIndex = i;
            }
        }
        
        //如果已经遍历完所有链表则退出
        if (minIndex == -1) {
            break;
        }
        
        cur.next = lists[minIndex];
        cur = cur.next;
        //该条链表下移一个节点
        if (lists[minIndex].next) {
            lists[minIndex] = lists[minIndex].next;
        } else {
            lists[minIndex] = [[ListNode alloc]initWithVal:-1];
        }
    }

    return head.next;
}

/// 解法三：两两合并链表，给第一个赋值
- (ListNode *)mergeKLists3:(NSMutableArray<ListNode *> *)lists
{
    if (!lists || lists.count == 0) {
        return nil;
    }
    
    Day02 *tool = [[Day02 alloc]init];
    
    for (int i = 1; i < lists.count; i++) {
        lists[0] = [tool mergeTwoLists:lists[0] listNode:lists[i]];
    }
    return lists[0];
}

/// 解法四：两两合并链表，归并
- (ListNode *)mergeKLists4:(NSMutableArray<ListNode *> *)lists
{
    if (!lists || lists.count == 0) {
        return nil;
    }
    
    Day02 *tool = [[Day02 alloc]init];
    
    int step = 1;
    
    while (step < lists.count) {
        int nextStep = step << 1;
        
        for (int i = 0; i+step < lists.count; i += nextStep) {
            lists[0] = [tool mergeTwoLists:lists[i] listNode:lists[i+step]];
        }
        
        step = nextStep;
    }
    return lists[0];
}

@end
