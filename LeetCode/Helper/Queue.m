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

- (void)offer:(id)node
{
    [self.array insertObject:node?:@"-1" atIndex:0];//-1表示空,用于占位
}

- (id)poll
{
    if (self.array.count > 0) {
        id obj = [self.array lastObject];
        [self.array removeLastObject];
        return obj;
    }
    return nil;
}

- (BOOL)isEmpty
{
    return self.array.count == 0;
}

- (NSMutableArray *)array
{
    if (_array == nil) {
        _array = [NSMutableArray array];
    }
    return _array;
}


@end
