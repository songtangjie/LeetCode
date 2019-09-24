//
//  Day04.h
//  LeetCode
//
//  Created by william on 2019/9/24.
//  Copyright © 2019 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface Day04 : NSObject

/**
 判断是否是二叉搜索树
 解法一：中序遍历所有节点，判断前后节点是否是递增的
*/
- (BOOL)isValidBST:(TreeNode *)root;

/**
 判断是否是二叉搜索树
 解法二：遍历所有节点，添加节点的上下界
*/
- (BOOL)isValidBST2:(TreeNode *)root;

/**
 判断是否是二叉搜索树
 解法三：层序遍历所有节点，添加节点的上下界
*/
- (BOOL)isValidBST3:(TreeNode *)root;

@end

NS_ASSUME_NONNULL_END
