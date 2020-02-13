//
//  Day36.h
//  LeetCode
//
//  Created by william on 2020/2/13.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day36 : NSObject

/*
 * 二分法查找临界值
 * 时间复杂度:O(logn)，空间复杂度:O(1)
 */    
+ (NSMutableArray *)searchRange:(NSMutableArray *)nums target:(int)target;

@end

NS_ASSUME_NONNULL_END
