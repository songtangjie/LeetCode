//
//  Day03.h
//  Whatever
//
//  Created by william on 2019/9/22.
//  Copyright © 2019 William. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface Day03 : NSObject

/// 解法一：所有元素放进数组排序，然后串起来
- (ListNode *)mergeKLists:(NSMutableArray<ListNode *> *)lists;

/// 解法二：遍历取出链表数组第一个节点，取最小的节点，然后串起来
- (ListNode *)mergeKLists2:(NSMutableArray<ListNode *> *)lists;

/// 解法三：两两合并链表，给第一个赋值
- (ListNode *)mergeKLists3:(NSMutableArray<ListNode *> *)lists;

/// 解法四：两两合并链表，归并
- (ListNode *)mergeKLists4:(NSMutableArray<ListNode *> *)lists;

@end

NS_ASSUME_NONNULL_END
