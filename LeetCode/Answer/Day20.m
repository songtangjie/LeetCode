//
//  Day20.m
//  LeetCode
//
//  Created by william on 2020/1/21.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day20.h"

@implementation Day20

/*
 * 回溯法递归
 */
+ (BOOL)isMatch:(NSString *)s p:(NSString *)p
{
    if (p.length == 0) {
        return s.length == 0;
    }
    
    BOOL firstMatch = ([s characterAtIndex:0] == [p characterAtIndex:0] ||
                       [p characterAtIndex:0] == '.'
                       );
    if (p.length >= 2 && [p characterAtIndex:1] == '*') {
        return ([self isMatch:s p:[p substringFromIndex:2]] ||
                 (firstMatch && [self isMatch:[s substringFromIndex:1] p:p])
                 );
    } else {
        return firstMatch && [self isMatch:[s substringFromIndex:1] p:[p substringFromIndex:1]];
    }
}

@end
