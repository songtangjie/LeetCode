//
//  Day01.m
//  Whatever
//
//  Created by William on 2019/9/14.
//  Copyright © 2019 William. All rights reserved.
//

#import "Day01.h"
#import "Stack.h"

@interface Day01()

@end

@implementation Day01

- (int)evalRPN:(NSArray<NSString *> *)strArr
{
    Stack *stack = [Stack new];
    
    for (NSString *str in strArr) {
        if ([str isEqualToString:@"+"]) {
            [stack push:([stack pop] + [stack pop])];
        } else if ([str isEqualToString:@"-"]) {
            [stack push:(-[stack pop] + [stack pop])];
        } else if ([str isEqualToString:@"*"]) {
            [stack push:([stack pop] * [stack pop])];
        } else if ([str isEqualToString:@"/"]) {
            int last = [stack pop];
            [stack push:([stack pop] / last)];
        } else {
            [stack push:[str intValue]];
        }
    }
    
    return [stack pop];
}

@end
