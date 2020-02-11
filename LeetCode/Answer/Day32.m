//
//  Day32.m
//  LeetCode
//
//  Created by william on 2020/2/11.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day32.h"

@implementation Day32

/*
 * 递归除2、3、5，结果为1则为丑数
 * 时间复杂度:O(1)，空间复杂度:O(1)
 */
+ (BOOL)isUgly:(int)num
{
    if (num == 0) {
        return NO;
    }
    
    while (num != 1) {
        if (num % 2 == 0) {
            num /= 2;
            continue;
        }
        
        if (num % 3 == 0) {
            num /= 3;
            continue;
        }
        
        if (num % 5 == 0) {
            num /= 5;
            continue;
        }
        
        return NO;
    }
    
    return YES;
}

@end
