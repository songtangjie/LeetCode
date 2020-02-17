//
//  Day44.h
//  LeetCode
//
//  Created by william on 2020/2/17.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day44 : NSObject

/*
 * 动态规划
 * F(n,s)=F(n−1,s−1)+F(n−1,s−2)+F(n−1,s−3)+F(n−1,s−4)+F(n−1,s−5)+F(n−1,s−6)
 * 时间复杂度:O(n^2)，空间复杂度:O(n^2)
 */    
+ (NSMutableArray *)twoSum:(int)n;

@end

NS_ASSUME_NONNULL_END
