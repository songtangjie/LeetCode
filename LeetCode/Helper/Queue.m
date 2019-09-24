//
//  Queue.m
//  LeetCode
//
//  Created by william on 2019/9/24.
//  Copyright © 2019 william. All rights reserved.
//

#import "Queue.h"

@interface Queue()

@property (nonatomic, strong) NSMutableArray *array;

@end

@implementation Queue

- (void)offer:(int)number
{
    [self.array insertObject:@(number) atIndex:0];
}

- (int)poll
{
    if (self.array.count > 0) {
        int obj = [[self.array lastObject] intValue];
        [self.array removeLastObject];
        return obj;
    }
    return 0;
}

- (NSMutableArray *)array
{
    if (_array == nil) {
        _array = [NSMutableArray array];
    }
    return _array;
}


@end
