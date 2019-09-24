//
//  Day04.m
//  LeetCode
//
//  Created by william on 2019/9/24.
//  Copyright © 2019 william. All rights reserved.
//

#import "Day04.h"
#import "Queue.h"

@interface Day04()

@property (nonatomic, strong) NSString *last;

@end

@implementation Day04

- (BOOL)isValidBST:(TreeNode *)root
{
    //空树默认是二叉搜索树
    if (!root) {
        return YES;
    }
    
    //遍历左子树
    if (![self isValidBST:root.left]) {
        return NO;
    }
    
    //不能用int默认值是0，可能节点值为负数
    if (self.last && [self.last intValue] >= root.val) {
        return NO;
    }
    self.last = [NSString stringWithFormat:@"%d",root.val];
    
    //遍历右子树
    if (![self isValidBST:root.right]) {
        return NO;
    }
    
    return YES;
}

/**
 判断是否是二叉搜索树
 解法二：遍历所有节点，添加节点的上下界
*/
- (BOOL)isValidBST2:(TreeNode *)root
{
    //空树默认是二叉搜索树
    if (!root) {
        return YES;
    }
    
    return [self isValidBST2:root min:nil max:nil];
}

- (BOOL)isValidBST2:(TreeNode *)root min:(NSString *)min max:(NSString *)max
{
    //空树默认是二叉搜索树
    if (!root) {
        return YES;
    }
    
    if (min && [min intValue] >= root.val) {
        return NO;
    }
    
    if (max && [max intValue] <= root.val) {
        return NO;
    }
    
    if (![self isValidBST2:root.left min:min max:[NSString stringWithFormat:@"%d",root.val]]) {
        return NO;
    }
    
    if (![self isValidBST2:root.right min:[NSString stringWithFormat:@"%d",root.val] max:max]) {
        return NO;
    }
    
    return YES;
}

/**
 判断是否是二叉搜索树
 解法三：层序遍历所有节点，添加节点的上下界
*/
- (BOOL)isValidBST3:(TreeNode *)root
{
    //空树默认是二叉搜索树
    if (!root) {
        return YES;
    }
    
    Queue *nodes = [[Queue alloc]init];
    Queue *mins = [[Queue alloc]init];
    Queue *maxs = [[Queue alloc]init];
    [nodes offer:root];
    [mins offer:nil];
    [maxs offer:nil];
    
    while (![nodes isEmpty]) {
        TreeNode *node = [nodes poll];
        NSString *min = [mins poll];
        NSString *max = [maxs poll];
        
        if ([min intValue] != -1 && [min intValue] >= node.val) {
            return NO;
        }
        
        if ([max intValue] != -1 && [max intValue] <= node.val) {
            return NO;
        }
        
        if (node.left) {
            [nodes offer:node.left];
            [mins offer:min];
            [maxs offer:[NSString stringWithFormat:@"%d",node.val]];
        }
        
        if (node.right) {
            [nodes offer:node.right];
            [mins offer:[NSString stringWithFormat:@"%d",node.val]];
            [maxs offer:max];
        }
    }
    
    return YES;
}

@end
