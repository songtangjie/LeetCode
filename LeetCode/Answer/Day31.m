//
//  Day31.m
//  LeetCode
//
//  Created by william on 2020/2/9.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day31.h"

@implementation Day31

/*
 * 滑动窗口法
 * 时间复杂度:O(n)，空间复杂度:O(1)
 */
+ (int)lengthOfLongestSubstring:(NSString *)s
{
    int n = (int)s.length;
    int ans = 0;
    int i = 0;
    
    NSMutableDictionary *map = [NSMutableDictionary dictionary];
    
    for (int j = 0; j < n; j++) {
        NSString *key = [NSString stringWithFormat:@"%c",[s characterAtIndex:j]];
        if ([map.allKeys containsObject:key]) {
            NSNumber *index = [map objectForKey:key];
            i = MAX([index intValue], i);
        }
        
        ans = MAX(ans, j - i + 1);
        [map setObject:@(j+1) forKey:key];
    }
    
    return ans;
}

@end
