//
//  Day29.h
//  LeetCode
//
//  Created by william on 2020/2/4.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day29 : NSObject

/*
 * 数字规律查找
 * 1-9有9个数，10-99有20X9个数字，100-999有300X9个数字，1000-9999有4000X9个数字；以此类推；
 * 设置一个标志位i，每一个区间都有固定的标志位，例如1-9是1，10--99是2，以此类推；然后用n减去每个区间的值，知道确定n在哪个区间；
 * 在得到区间中确定的数字，将其变为string型，然后就可以得到确定的数字。
 */    
+ (int)findNthDigit:(int)n;

@end

NS_ASSUME_NONNULL_END