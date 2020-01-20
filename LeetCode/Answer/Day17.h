//
//  Day17.h
//  LeetCode
//
//  Created by william on 2020/1/20.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface Day17 : NSObject

/* 快慢指针
 * 时间复杂度:O(L)链表节点长度，空间复杂度:O(1)
 */
+ (ListNode *)removeNthFromEnd:(ListNode *)head n:(int)n;

@end

NS_ASSUME_NONNULL_END
