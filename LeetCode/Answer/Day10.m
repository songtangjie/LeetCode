//
//  Day10.m
//  LeetCode
//
//  Created by william on 2019/11/27.
//  Copyright © 2019 william. All rights reserved.
//

#import "Day10.h"

@implementation Day10

/// 动态规划矩阵法【时间O(n^2),空间O(n^2)】
- (void)palindrome3:(NSString *)s
{
    NSMutableDictionary *map = [NSMutableDictionary dictionary];
    
    if (s.length < 2) {
        NSLog(@"回文：%@",s);
    }
    
    NSMutableArray *arr = [NSMutableArray arrayWithCapacity:s.length];
    for (int i = 0; i < s.length; i++) {
        NSMutableArray *subArr = [NSMutableArray arrayWithCapacity:s.length];
        for (int j = 0; j < s.length; j++) {
            subArr[j] = @(0);
        }
        arr[i] = subArr;
    }
    
    for (int r = 0; r < s.length; r++) {
        for (int l = 0; l <= r; l++) {
            if ([s characterAtIndex:r] == [s characterAtIndex:l] && (r - l <= 2 || ([arr[l+1][r-1] intValue] == 1))) {
                arr[l][r] = @(1);
                NSString *subStr = [s substringWithRange:NSMakeRange(l, r + 1 - l)];
                [map setObject:subStr forKey:subStr];
            }
        }
    }

    for (NSString *str in map.allValues) {
        NSLog(@"%@",str);
    }
}

/// 中心扩散法【时间O(n^2),空间O(1)】
- (void)palindrome2:(NSString *)s
{
    NSMutableDictionary *map = [NSMutableDictionary dictionary];
    
    if (s.length < 2) {
        NSLog(@"回文：%@",s);
    }
    
    for (int i = 0; i < s.length; i++) {
        NSString *oddStr = [self subStr:s left:i right:i];
        NSString *evenStr = [self subStr:s left:i right:i+1];
        
        if (oddStr.length > 0) {
            [map setObject:oddStr forKey:oddStr];
        }
        
        if (evenStr.length > 0) {
            [map setObject:evenStr forKey:evenStr];
        }
    }
    
    for (NSString *str in map.allValues) {
        NSLog(@"%@",str);
    }
}

- (NSString *)subStr:(NSString *)s left:(int)left right:(int)right
{
    int i = left;
    int j = right;
    
    while (i >= 0 && j < s.length && [s characterAtIndex:i] == [s characterAtIndex:j]) {
        i--;
        j++;
    }
    return [s substringWithRange:NSMakeRange(i+1, j-i-1)];
}

/// 暴力法【时间O(n^3),空间O(1)】
- (void)palindrome1:(NSString *)s
{
    NSMutableDictionary *map = [NSMutableDictionary dictionary];
    
    if (s.length < 2) {
        NSLog(@"回文：%@",s);
    }
    
    for (int i = 0; i < s.length; i++) {
        if (i == s.length - 1) {//最后一个字符直接添加
            [map setObject:[s substringWithRange:NSMakeRange(i, 1)] forKey:[s substringWithRange:NSMakeRange(i, 1)]];
        }
        
        for (int j = i+1; j < s.length; j++) {
            NSString *subStr = [s substringWithRange:NSMakeRange(i, j-i)];
            BOOL isPalindrome = YES;
            
            for (int k = 0; k < subStr.length; k++) {
                if ([subStr characterAtIndex:k] != [subStr characterAtIndex:(subStr.length - k - 1)]) {
                    isPalindrome = NO;
                    break;
                }
            }
            
            if (isPalindrome) {
                [map setObject:subStr forKey:subStr];
            }
        }
    }
    
    for (NSString *str in map.allValues) {
        NSLog(@"%@",str);
    }
}

@end
