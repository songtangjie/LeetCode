//
//  Day24.m
//  LeetCode
//
//  Created by william on 2020/2/1.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day24.h"

@implementation Node24

@end

@interface Day24()

@property (nonatomic, strong) Node24 *first;
@property (nonatomic, strong) Node24 *last;

@end

@implementation Day24

/*
 * 中序遍历
 * 时间复杂度:O(n)，空间复杂度:O(n)
 */
- (Node24 *)treeToDoublyList:(Node24 *)root
{
    if (!root) {
        return root;
    }
    
    [self helper:root];
    
    self.last.right = self.first;
    self.first.left = self.last;
    return self.first;
}

- (void)helper:(Node24 *)node
{
    if (node) {
        //遍历左节点
        [self helper: node.left];
        
        if (self.last) {
            //交换指向
            self.last.right = node;
            node.left = self.last;
        } else {
            //当前没有前驱节点，则是最小节点
            self.first = node;
        }
        //当前节点是链表最大节点
        self.last = node;
        
        //遍历右节点
        [self helper: node.right];
    }
}

@end
