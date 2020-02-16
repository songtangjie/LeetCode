//
//  Day41.h
//  LeetCode
//
//  Created by william on 2020/2/16.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day41 : NSObject

/*
 * 双指针法
 * 时间复杂度:O(n)，空间复杂度:O(1)
 */    
+ (NSMutableArray *)twoSum:(NSArray *)nums target:(int)target;

@end

NS_ASSUME_NONNULL_END
