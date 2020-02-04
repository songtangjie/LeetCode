//
//  Day29.m
//  LeetCode
//
//  Created by william on 2020/2/4.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day29.h"

@implementation Day29

/*
 * 数字规律查找
 * 1-9有9个数，10-99有20X9个数字，100-999有300X9个数字，1000-9999有4000X9个数字；以此类推；
 * 设置一个标志位i，每一个区间都有固定的标志位，例如1-9是1，10--99是2，以此类推；然后用n减去每个区间的值，知道确定n在哪个区间；
 * 在得到区间中确定的数字，将其变为string型，然后就可以得到确定的数字。
 */
+ (int)findNthDigit:(int)n
{
    int i = 1;
    while (n > i * 9 * pow(10, i-1)) {
        //小于区间的值要减去，直到得到确定的区间
        n -= i * 9 * pow(10, i-1);
        //标志位++
        i++;
    }
    
    //确定区间中数字，例：1001是从100开始第270个数字的中间一位
    int am_num = (n-1) / i + pow(10, i-1);
    //将数字变为string，好取得确定的数字
    NSString *a = [NSString stringWithFormat:@"%d",am_num];
    if (n % i == 0) {
        return [a characterAtIndex:i - 1] - '0';
    }
    return [a characterAtIndex:n%i - 1] - '0';
}

@end
