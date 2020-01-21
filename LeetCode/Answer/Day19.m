//
//  Day19.m
//  LeetCode
//
//  Created by william on 2020/1/21.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day19.h"

@implementation Day19

/*
 * 遍历，找到重复数则直接跳过
 */
+ (ListNode *)deleteDuplicates:(ListNode *)head
{
    //创建虚拟头节点
    ListNode *dummy = [[ListNode alloc] initWithVal:0];
    dummy.next = head;
    
    ListNode *cur = dummy;
    while (cur.next && cur.next.next) {
        if (cur.next.val == cur.next.next.val) {//找到下个数字和下下个数是重复数
            ListNode *temp = cur.next;
            //跳过中间重复数指向不重复的数字
            while (temp && temp.next && temp.val == temp.next.val) {
                temp = temp.next;
            }
            cur.next = temp.next;
        } else {
            cur = cur.next;
        }
    }
    
    return dummy.next;
}

@end
