//
//  Day33.m
//  LeetCode
//
//  Created by william on 2020/2/11.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day33.h"

@implementation Day33

/*
 * 用字典计数
 * 时间复杂度:O(n)，空间复杂度:O(n)
 */
+ (int)firstUniqChar:(NSString *)s
{
    NSMutableDictionary *countMap = [NSMutableDictionary dictionaryWithCapacity:s.length];
    //遍历字符串字符，给字典里计数
    for (int i = 0; i < s.length; i++) {
        char c = [s characterAtIndex:i];
        NSString *key = [NSString stringWithFormat:@"%c",c];
        if ([countMap objectForKey:key]) {
            NSNumber *count = [countMap objectForKey:[NSString stringWithFormat:@"%c",c]];
            [countMap setValue:@([count intValue]+1) forKey:key];
        } else {
            [countMap setValue:@(1) forKey:key];
        }
    }
    
    //取值
    for (int i = 0; i < s.length; i++) {
        char c = [s characterAtIndex:i];
        NSString *key = [NSString stringWithFormat:@"%c",c];
        if ([countMap objectForKey:key]) {
            NSNumber *count = [countMap objectForKey:[NSString stringWithFormat:@"%c",c]];
            if ([count intValue] == 1) {
                return i;
            }
        }
    }
    
    return -1;
}

@end
