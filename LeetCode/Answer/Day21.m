//
//  Day21.m
//  LeetCode
//
//  Created by william on 2020/1/21.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day21.h"

@implementation Day21

/*
 * 递归
 * 时间复杂度:O(n)，时间复杂度:O(n)
 */
+ (BOOL)isSymmetric:(TreeNode *)root
{
    return [self isMirror:root t2:root];
}

+ (BOOL)isMirror:(TreeNode *)t1 t2:(TreeNode *)t2
{
    if (!t1 && !t2) {
        return YES;
    }
    if (!t1 || !t2) {
        return NO;
    }
    
    return t1.val == t2.val &&
    [self isMirror:t1.left t2:t2.right] &&
    [self isMirror:t1.right t2:t2.left];
}

@end
