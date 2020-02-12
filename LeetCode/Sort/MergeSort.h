//
//  MergeSort.h
//  LeetCode
//
//  Created by william on 2020/2/11.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MergeSort : NSObject

/*
 * 归并排序
 * 时间复杂度:O(nlogn)，空间复杂度:O(1)
 */
+ (void)mergeSort:(NSMutableArray *)arr;

@end

NS_ASSUME_NONNULL_END
