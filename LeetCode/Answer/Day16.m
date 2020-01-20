//
//  Day16.m
//  LeetCode
//
//  Created by william on 2020/1/20.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day16.h"

@implementation Day16

/* 双指针交换
 * 时间复杂度:O(n)，空间复杂度:O(1)
 */
+ (NSMutableArray *)sortArrayByParity:(NSMutableArray *)arr
{
    int pre = 0;
    int last = (int)(arr.count - 1);
    
    while (pre < last) {
        //前面是偶数
        while (pre < last && ([arr[pre] intValue] & 0x1) == 0) {
            pre++;
        }
        //前面是奇数
        while (pre < last && ([arr[last] intValue] & 0x1) != 0) {
            last--;
        }
        
        if (pre < last) {
            NSNumber *temp = arr[pre];
            arr[pre] = arr[last];
            arr[last] = temp;
        }
    }
    return arr;
}

@end
