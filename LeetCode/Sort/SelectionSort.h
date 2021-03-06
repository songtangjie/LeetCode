//
//  SelectionSort.h
//  LeetCode
//
//  Created by william on 2020/2/4.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SelectionSort : NSObject

/*
 * 选择排序
 * 时间复杂度:O(n^2)，空间复杂度:O(1)
 */
+ (void)selectionSort:(NSMutableArray *)arr;

@end

NS_ASSUME_NONNULL_END
