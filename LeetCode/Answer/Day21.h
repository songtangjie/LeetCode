//
//  Day21.h
//  LeetCode
//
//  Created by william on 2020/1/21.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface Day21 : NSObject

/*
 * 递归
 * 时间复杂度:O(n)，时间复杂度:O(n)
 */    
+ (BOOL)isSymmetric:(TreeNode *)root;

@end

NS_ASSUME_NONNULL_END
