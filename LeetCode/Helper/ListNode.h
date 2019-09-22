//
//  ListNode.h
//  Whatever
//
//  Created by William on 2019/9/15.
//  Copyright © 2019 William. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ListNode : NSObject

///值
@property (nonatomic, assign) int val;
///下一个节点
@property (nonatomic, strong) ListNode *next;

- (instancetype)initWithVal:(int)val;

@end

NS_ASSUME_NONNULL_END
