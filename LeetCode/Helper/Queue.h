//
//  Queue.h
//  LeetCode
//
//  Created by william on 2019/9/24.
//  Copyright © 2019 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TreeNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface Queue : NSObject

- (void)offer:(id)node;

- (id)poll;

- (BOOL)isEmpty;

@end

NS_ASSUME_NONNULL_END
