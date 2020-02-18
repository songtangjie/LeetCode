//
//  Day46.h
//  LeetCode
//
//  Created by william on 2020/2/18.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day46 : NSObject

/*
 * 数学递推式f(i)=(f(i−1)+m)%i
 * 时间复杂度:O(n)，空间复杂度:O(1)
 */    
+ (int)lastRemaining1:(int)n m:(int)m;

/*
 * 链表方式，找到则把剩余节点插入链表末尾
 * 时间复杂度:O(m*n)，空间复杂度:O(n)
 */    
+ (int)lastRemaining2:(int)n m:(int)m;

@end

NS_ASSUME_NONNULL_END
