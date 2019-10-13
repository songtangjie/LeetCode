//
//  Day07.h
//  LeetCode
//
//  Created by william on 2019/10/13.
//  Copyright © 2019 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Day07 : NSObject

/**
 动态规划：打家劫舍
 输入: [1,2,3,1]
 输出: 4
 解释: 偷窃 1 号房屋 (金额 = 1) ，然后偷窃 3 号房屋 (金额 = 3)。
      偷窃到的最高金额 = 1 + 3 = 4 。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/house-robber
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
*/
- (int)rob:(NSArray *)nums;

@end

NS_ASSUME_NONNULL_END
