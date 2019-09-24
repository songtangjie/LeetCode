//
//  TreeNode.h
//  LeetCode
//
//  Created by william on 2019/9/24.
//  Copyright © 2019 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TreeNode : NSObject

///值
@property (nonatomic, assign) int val;
///右子节点
@property (nonatomic, strong) TreeNode *right;
///左子节点
@property (nonatomic, strong) TreeNode *left;

- (instancetype)initWithVal:(int)val;

@end

NS_ASSUME_NONNULL_END
