//
//  Day39.h
//  LeetCode
//
//  Created by william on 2020/2/15.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface TreeInfo : NSObject

@property(nonatomic, assign) int height;
@property(nonatomic, assign) BOOL balanced;

- (instancetype)initWithHeight:(int)height balanced:(BOOL)balanced;

@end

@interface Day39 : NSObject

/*
 * 自底向上递归，避免重复查询问题
 * 时间复杂度:O(n)，空间复杂度:O(n)
 */    
+ (BOOL)isBalanced:(TreeNode *)root;

@end

NS_ASSUME_NONNULL_END
