//
//  Day35.h
//  LeetCode
//
//  Created by william on 2020/2/12.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface Day35 : NSObject

/*
 * 双指针法
 * 时间复杂度:O(m+n)，空间复杂度:O(1)
 */
+ (ListNode *)getIntersectionNode:(ListNode *)headA headB:(ListNode *)headB;

@end

NS_ASSUME_NONNULL_END
