//
//  Day38.m
//  LeetCode
//
//  Created by william on 2020/2/14.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day38.h"

@implementation Day38

/*
 * 中序右到左遍历
 * 时间复杂度:O(n)，空间复杂度:O(1)
 */
+ (int)kthLargest:(TreeNode *)root k:(int)k
{
    NSMutableArray *result = [NSMutableArray array];
    NSMutableArray *stack = [NSMutableArray array];
    TreeNode *cur = root;
    
    while (cur || stack.count > 0) {
        while (cur) {
            [stack insertObject:cur atIndex:0];
            cur = cur.right;
        }
        
        cur = [stack firstObject];
        [stack removeObjectAtIndex:0];
        
        [result addObject:@(cur.val)];
        cur = cur.left;
    }
    
    return [[result objectAtIndex:k-1] intValue];
}

@end
