//
//  Stack.m
//  Whatever
//
//  Created by William on 2019/9/14.
//  Copyright © 2019 William. All rights reserved.
//

#import "Stack.h"

@interface Stack()

@property (nonatomic, strong) NSMutableArray *array;

@end

@implementation Stack

- (void)push:(int)number;
{
    [self.array addObject:@(number)];
}

- (int)pop
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
