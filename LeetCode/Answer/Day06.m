//
//  Day06.m
//  LeetCode
//
//  Created by william on 2019/10/10.
//  Copyright © 2019 william. All rights reserved.
//

#import "Day06.h"

@interface Day06()
//记录上一个节点
@property (nonatomic, strong) TreeNode *prev;

@end

@implementation Day06

/**
 前序遍历法
*/
- (void)flatten:(TreeNode *)root
{
    while (root) {
        if (root.left) {
            //左子树替换右子树
            TreeNode *oldRight = root.right;
            root.right = root.left;
            root.left = nil;
            
            //寻找最右子节点，并把刚才的节点插入最后
            TreeNode *mostRightNode = root;
            while (mostRightNode.right) {
                mostRightNode = mostRightNode.right;
            }
            mostRightNode.right = oldRight;
        }
        
        root = root.right;
        
    }
    
}

/**
 后序遍历法
*/
- (void)flatten2:(TreeNode *)root
{
    if (!root) {
        return;
    }
    
    [self flatten2:root.right];
    [self flatten2:root.left];
    
    if (self.prev) {
        root.right = self.prev;
        root.left = nil;
    }
    
    self.prev = root;
}

@end
