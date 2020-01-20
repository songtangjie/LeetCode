//
//  Day18.m
//  LeetCode
//
//  Created by william on 2020/1/20.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day18.h"

@implementation Day18

/* 遍历
* 时间复杂度:O(m*n)链表节点长度，空间复杂度:O(n)
*/
+ (BOOL)isSubtree:(TreeNode *)s t:(TreeNode *)t
{
    BOOL result = NO;
    
    if (s && t) {
        if (s.val == t.val) {
            result = [self doesTreeHaveTree2:s root2:t];
        }
        
        //遍历左子树
        if (!result) {
            result = [self isSubtree:s.left t:t];
        }
        
        //遍历右子树
        if (!result) {
            result = [self isSubtree:s.right t:t];
        }
    }
    
    return result;
}

+ (BOOL)doesTreeHaveTree2:(TreeNode *)root1 root2:(TreeNode *)root2
{
    //子树完全一样
    if (!root2 && !root1) {
        return YES;
    }
    
    //有一个结束另一树还有节点
    if (!root1 || !root2) {
        return NO;
    }
    
    if (root1.val != root2.val) {
        return NO;
    }
    
    return [self doesTreeHaveTree2:root1.left root2:root2.left] &&
    [self doesTreeHaveTree2:root1.right root2:root2.right];
}

@end
