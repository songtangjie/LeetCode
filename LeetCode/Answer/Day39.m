//
//  Day39.m
//  LeetCode
//
//  Created by william on 2020/2/15.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day39.h"

@implementation TreeInfo

- (instancetype)initWithHeight:(int)height balanced:(BOOL)balanced
{
    if (self = [super init]) {
        self.height = height;
        self.balanced = balanced;
    }
    return self;
}

@end

@implementation Day39

/*
 * 自底向上递归，避免重复查询问题
 * 时间复杂度:O(n)，空间复杂度:O(n)
 */
+ (BOOL)isBalanced:(TreeNode *)root
{
    return [self isBalancedTreeHelper:root].balanced;
}

+ (TreeInfo *)isBalancedTreeHelper:(TreeNode *)root
{
    if (!root) {
        return [[TreeInfo alloc] initWithHeight:-1 balanced:YES];
    }
    
    TreeInfo *left = [self isBalancedTreeHelper:root.left];
    if (!left.balanced) {
        return [[TreeInfo alloc] initWithHeight:-1 balanced:NO];
    }
    
    TreeInfo *right = [self isBalancedTreeHelper:root.right];
    if (!right.balanced) {
        return [[TreeInfo alloc] initWithHeight:-1 balanced:NO];
    }
    
    if (abs(left.height - right.height) < 2) {
        return [[TreeInfo alloc] initWithHeight:MAX(left.height, right.height)+1 balanced:YES];
    }
    
    return [[TreeInfo alloc] initWithHeight:-1 balanced:NO];
}

@end
