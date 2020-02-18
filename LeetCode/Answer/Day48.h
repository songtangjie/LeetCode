//
//  Day48.h
//  LeetCode
//
//  Created by william on 2020/2/18.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day48 : NSObject

/*
 * a+b = (a ^ b) + ((a & b) << 1),其中((a & b) << 1)表示进位
 * 时间复杂度:O(1)，空间复杂度:O(1)
 */    
+ (int)add:(int)a b:(int)b;

@end

NS_ASSUME_NONNULL_END
