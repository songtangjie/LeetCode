//
//  Day47.m
//  LeetCode
//
//  Created by william on 2020/2/18.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day47.h"

@implementation Day47

/*
 * 对于A && B，如果A为假，那么就不执行B了;而如果A为真，就会执行B。
 * 对于A || B，如果A为真，那么就会不执行B了;而如果A为假，就会执行B。
 * 时间复杂度:O(n)，空间复杂度:O(1)
 */
+ (int)sumNums:(int)n
{
    int sum = n;
    BOOL res = (n > 0) && ((sum += [self sumNums:n-1]) > 0);
    return sum;
}

@end
