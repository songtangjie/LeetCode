//
//  Day45.h
//  LeetCode
//
//  Created by william on 2020/2/17.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day45 : NSObject

/*
 * 先排序，大小王为0，可以替代任何数。出现对子则肯定不是顺子。
 * 时间复杂度:O(n)，空间复杂度:O(1)
 */    
+ (BOOL)isStraight:(NSMutableArray *)nums;

@end

NS_ASSUME_NONNULL_END
