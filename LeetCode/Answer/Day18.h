//
//  Day18.h
//  LeetCode
//
//  Created by william on 2020/1/20.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface Day18 : NSObject

/* 遍历
* 时间复杂度:O(m*n)链表节点长度，空间复杂度:O(n)
*/
+ (BOOL)isSubtree:(TreeNode *)s t:(TreeNode *)t;

@end

NS_ASSUME_NONNULL_END
