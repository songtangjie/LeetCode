//
//  Day44.m
//  LeetCode
//
//  Created by william on 2020/2/17.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day44.h"

@implementation Day44

/*
 * 动态规划
 *
 F(n,s)=F(n−1,s−1)+F(n−1,s−2)+F(n−1,s−3)+F(n−1,s−4)+F(n−1,s−5)+F(n−1,s−6)
 * 时间复杂度:O(n^2)，空间复杂度:O(n^2)
 */
+ (NSMutableArray *)twoSum:(int)n
{
    NSMutableArray *dp = [NSMutableArray array];
    for (int j = 0; j < n; j++) {
        NSMutableArray *temp = [NSMutableArray array];
        for (int i = 0; i <= 6*n; i++) {
            [temp addObject:@(0)];
        }
        [dp addObject:temp];
    }
    //边界条件
    NSMutableArray *temp = dp[1];
    for (int s = 1; s <= 6; s++) {
        temp[s] = @(1);
    }
    
    for (int i = 2; i <= n; i++) {
        NSMutableArray *temp = [NSMutableArray array];
        //占位
        for (int s = 0; s <= 6*i; s++) {
            [temp addObject:@(0)];
        }
        
        for (int s = i; s <= 6*i; s++) {
            temp[0] = @(1);
            for (int d = 1; d <= 6; d++) {
                if (s-d < i-1) {
                    break;
                }
                
                NSMutableArray *last = dp[i-1];
                temp[s] = @([temp[s] intValue] + [last[s-d] intValue]);
            }
        }
        dp[i] = temp;
    }
    
    double total = pow(6, n);
    NSMutableArray *ans = [NSMutableArray arrayWithCapacity:5*n+1];
    NSMutableArray *nArr = dp[n];
    for (int i = n; i <= 6*n; i++) {
        ans[i-n] = @([nArr[i] doubleValue] / total);
    }
    return ans;
}

@end
