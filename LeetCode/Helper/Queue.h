//
//  Queue.h
//  LeetCode
//
//  Created by william on 2019/9/24.
//  Copyright © 2019 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Queue : NSObject

- (void)offer:(int)number;

- (int)poll;

@end

NS_ASSUME_NONNULL_END
