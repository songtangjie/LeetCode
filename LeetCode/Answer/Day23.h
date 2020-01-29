//
//  Day23.h
//  LeetCode
//
//  Created by william on 2020/1/27.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject<NSCopying>

@property (nonatomic, assign) int val;
@property (nonatomic, strong) Node *next;
@property (nonatomic, strong) Node *random;

- (instancetype)initWithVal:(int)val next:(Node *)next random:(Node *)random;

@end

NS_ASSUME_NONNULL_BEGIN

@interface Day23 : NSObject

/*
 * 回溯法
 * 时间复杂度:O(n)，空间复杂度:O(n)
 */
- (Node *)copyRandomList1:(Node *)head;

/*
 * 迭代法
 * 时间复杂度:O(n)，空间复杂度:O(n)
 */
- (Node *)copyRandomList2:(Node *)head;

/*
 * 新节点穿插在旧的中间
 * 时间复杂度:O(n)，空间复杂度:O(1)
 */
- (Node *)copyRandomList:(Node *)head;

@end

NS_ASSUME_NONNULL_END
