//
//  Day12.h
//  LeetCode
//
//  Created by william on 2020/1/15.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day12 : NSObject

/* 先排序再查找前后数字
 * 时间复杂度:O(n)，时间复杂度:O(1)或O(n)
 */
- (int)findDuplicate1:(NSMutableArray *)nums;

/* 用哈希表的唯一性来判断
 * 时间复杂度:O(n)，时间复杂度:O(n)
 */
- (int)findDuplicate2:(NSMutableArray *)nums;

/* 快慢指针查找链表的环
 * 时间复杂度:O(n)，时间复杂度:O(1)
 */
- (int)findDuplicate3:(NSMutableArray *)nums;

@end

NS_ASSUME_NONNULL_END
