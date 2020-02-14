//
//  Day38.h
//  LeetCode
//
//  Created by william on 2020/2/14.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface Day38 : NSObject

/*
 * 中序右到左遍历
 * 时间复杂度:O(n)，空间复杂度:O(1)
 */    
+ (int)kthLargest:(TreeNode *)root k:(int)k;

@end

NS_ASSUME_NONNULL_END
