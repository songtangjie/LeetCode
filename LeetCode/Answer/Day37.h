//
//  Day37.h
//  LeetCode
//
//  Created by william on 2020/2/13.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day37 : NSObject

/*
 * 二分法查找临界值
 * 时间复杂度:O(logn)，空间复杂度:O(1)
 */    
+ (int)missingNumber:(NSMutableArray *)nums;

@end

NS_ASSUME_NONNULL_END
