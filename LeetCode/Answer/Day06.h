//
//  Day06.h
//  LeetCode
//
//  Created by william on 2019/10/10.
//  Copyright © 2019 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface Day06 : NSObject

/**
 给定一个二叉树，原地将它展开为链表
*/
- (void)flatten:(TreeNode *)root;

- (void)flatten2:(TreeNode *)root;

@end

NS_ASSUME_NONNULL_END
