//
//  Day32.h
//  LeetCode
//
//  Created by william on 2020/2/11.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day32 : NSObject

/*
 * 递归除2、3、5，结果为1则为丑数
 * 时间复杂度:O(1)，空间复杂度:O(1)
 */    
+ (BOOL)isUgly:(int)num;

@end

NS_ASSUME_NONNULL_END
