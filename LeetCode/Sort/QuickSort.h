//
//  QuickSort.h
//  Whatever
//
//  Created by william on 2019/9/21.
//  Copyright © 2019 William. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class ListNode;

@interface QuickSort : NSObject

// 节点快速排序
+ (void)quickSort:(NSMutableArray<ListNode *> *)m low:(int)low high:(int)high;

// 整数快速排序
+ (void)quickSortNums:(NSMutableArray *)m low:(int)low high:(int)high;

@end

NS_ASSUME_NONNULL_END
