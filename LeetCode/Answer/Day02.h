//
//  Day02.h
//  Whatever
//
//  Created by William on 2019/9/15.
//  Copyright © 2019 William. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface Day02 : NSObject

/**
 有序的双链表合并【迭代】
 */
- (ListNode *)mergeTwoLists:(ListNode *)l1 listNode:(ListNode *)l2;

/**
 有序的双链表合并【递归】
 */
- (ListNode *)mergeTwoLists2:(ListNode *)l1 listNode:(ListNode *)l2;

@end

NS_ASSUME_NONNULL_END
