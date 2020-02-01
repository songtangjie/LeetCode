//
//  Day24.h
//  LeetCode
//
//  Created by william on 2020/2/1.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Node24 : NSObject

@property (nonatomic, assign) int val;
@property (nonatomic, strong) Node24 *left;
@property (nonatomic, strong) Node24 *right;

@end


@interface Day24 : NSObject

/*
 * 中序遍历
 * 时间复杂度:O(n)，空间复杂度:O(n)
 */    
- (Node24 *)treeToDoublyList:(Node24 *)root;

@end

NS_ASSUME_NONNULL_END
