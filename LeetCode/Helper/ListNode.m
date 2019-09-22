//
//  ListNode.m
//  Whatever
//
//  Created by William on 2019/9/15.
//  Copyright © 2019 William. All rights reserved.
//

#import "ListNode.h"

@implementation ListNode

- (instancetype)initWithVal:(int)val
{
    if (self = [super init]) {
        self.val = val;
    }
    return self;
}

@end
