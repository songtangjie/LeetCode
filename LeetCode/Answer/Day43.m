//
//  Day43.m
//  LeetCode
//
//  Created by william on 2020/2/16.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day43.h"

@implementation Day43

/*
 * 双指针遍历法
 * 时间复杂度:O(n)，空间复杂度:O(n)
 */
+ (NSMutableString *)reverseWords:(NSString *)s
{
    NSMutableString *res = [NSMutableString string];
    int i = (int)s.length - 1;
    int j = (int)s.length;
    
    while (i > 0) {
        if ([s characterAtIndex:i] == ' ') {//遍历到一组词
            [res appendString:[s substringWithRange:NSMakeRange(i+1, j-i-1)]];
            [res appendString:@" "];
            //忽略中间的空格
            while ([s characterAtIndex:i] == ' ') {
                i--;
            }
            j = i+1;
        }
        i--;
    }
    //拼接最后一组词
    [res appendString:[s substringWithRange:NSMakeRange(0, j)]];
    return res;
}

@end
