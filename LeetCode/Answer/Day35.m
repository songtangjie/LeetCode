//
//  Day35.m
//  LeetCode
//
//  Created by william on 2020/2/12.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day35.h"

@implementation Day35

/*
 * 双指针法
 * 时间复杂度:O(m+n)，空间复杂度:O(1)
 */
+ (ListNode *)getIntersectionNode:(ListNode *)headA headB:(ListNode *)headB
{
    if (!headA || !headB) {
        return nil;
    }
    
    ListNode *pA = headA;
    ListNode *pB = headB;
    while (pA != pB) {
        pA = pA.next;
        pB = pB.next;
        
        if (!pA) {
            pA = headB;
        }
        
        if (!pB) {
            pB = headA;
        }
    }
    return pA;
}

@end
