//
//  Day22.m
//  LeetCode
//
//  Created by william on 2020/1/22.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day22.h"

@interface Day22()

//原始栈
@property (nonatomic, strong) NSMutableArray *data;
//辅助栈
@property (nonatomic, strong) NSMutableArray *helper;

@end

@implementation Day22

- (instancetype)init
{
    if (self = [super init]) {
        self.data = [NSMutableArray array];
        self.helper = [NSMutableArray array];
    }
    return self;
}

- (void)push:(int)x
{
    [self.data addObject:@(x)];
    
    if (self.helper.count == 0 || [self.helper.lastObject intValue] >= x) {
        [self.helper addObject:@(x)];
    } else {
        [self.helper addObject:self.helper.lastObject];
    }
}

- (void)pop
{
    if (self.data.count > 0) {
        [self.data removeLastObject];
        [self.helper removeLastObject];
    }
}

- (int)top
{
    if (self.data.count > 0) {
        NSLog(@"%d",[self.data.lastObject intValue]);
        return [self.data.lastObject intValue];
    }
    return 0;
}

- (int)getMin
{
    if (self.helper.count > 0) {
         NSLog(@"%d",[self.helper.lastObject intValue]);
         return [self.helper.lastObject intValue];
    }
    return 0;
}

@end
