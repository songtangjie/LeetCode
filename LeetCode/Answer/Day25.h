//
//  Day25.h
//  LeetCode
//
//  Created by william on 2020/2/1.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface Day25 : NSObject

/*
 * 前序遍历序列化
 * 时间复杂度:O(n)，空间复杂度:O(n)
 */
+ (NSMutableString *)serialize:(TreeNode *)root;

/*
 * 前序遍历反序列化
 * 时间复杂度:O(n)，空间复杂度:O(n)
 */
+ (TreeNode *)deserialize:(NSString *)data;

@end

NS_ASSUME_NONNULL_END
