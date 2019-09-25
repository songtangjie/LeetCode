//
//  ViewController.m
//  LeetCode
//
//  Created by william on 2019/9/22.
//  Copyright © 2019 william. All rights reserved.
//


#import "ViewController.h"
#import "Day01.h"
#import "Day02.h"
#import "ListNode.h"
#import "QuickSort.h"
#import "Day03.h"
#import "Day04.h"
#import "TreeNode.h"
#import "Day05.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    [self testDay01];
//    [self testDay02];
//    [self testQuickSort];
//    [self testDay03];
//    [self testDay04];
    [self testDay05];
}

- (void)testDay01
{
    Day01 *day01 = [[Day01 alloc]init];
    NSLog(@"result1 is %d.",[day01 evalRPN:@[@"2", @"1", @"+", @"3", @"*"]]);
    NSLog(@"result2 is %d.",[day01 evalRPN:@[@"4", @"13", @"5", @"/", @"+"]]);
    NSLog(@"result3 is %d.",[day01 evalRPN:@[@"10", @"6", @"9", @"3", @"+", @"-11", @"*", @"/", @"*", @"17", @"+", @"5", @"+"]]);
}

- (void)testDay02
{
    Day02 *day02 = [[Day02 alloc]init];
    
    //链表一
    ListNode *node11 = [[ListNode alloc]initWithVal:1];
    ListNode *node12 = [[ListNode alloc]initWithVal:2];
    node11.next = node12;
    ListNode *node13 = [[ListNode alloc]initWithVal:4];
    node12.next = node13;

    //链表二
    ListNode *node21 = [[ListNode alloc]initWithVal:1];
    ListNode *node22 = [[ListNode alloc]initWithVal:3];
    node21.next = node22;
    ListNode *node23 = [[ListNode alloc]initWithVal:4];
    node22.next = node23;

    //打印结果
    ListNode *resutl = [day02 mergeTwoLists2:node11 listNode:node21];
    while (resutl) {
        NSLog(@"val is %d.",resutl.val);
        resutl = resutl.next;
    }
}

- (void)testQuickSort
{
    NSMutableArray *arr = [NSMutableArray arrayWithObjects:@"6",@"1",@"2",@"9",@"12",@"45",@"21",@"5", nil];
    [QuickSort quickSort:arr low:0 high:7];

    for (NSString *str in arr) {
        NSLog(@"%d-",[str intValue]);
    }
}

- (void)testDay03
{
    Day03 *day03 = [[Day03 alloc]init];
    
    //链表一
    ListNode *node11 = [[ListNode alloc]initWithVal:1];
    ListNode *node12 = [[ListNode alloc]initWithVal:4];
    node11.next = node12;
    ListNode *node13 = [[ListNode alloc]initWithVal:5];
    node12.next = node13;

    //链表二
    ListNode *node21 = [[ListNode alloc]initWithVal:1];
    ListNode *node22 = [[ListNode alloc]initWithVal:3];
    node21.next = node22;
    ListNode *node23 = [[ListNode alloc]initWithVal:4];
    node22.next = node23;

    //链表三
    ListNode *node31 = [[ListNode alloc]initWithVal:2];
    ListNode *node32 = [[ListNode alloc]initWithVal:6];
    node31.next = node32;

    NSMutableArray *array = [NSMutableArray arrayWithObjects:node11,node21,node31, nil];
    ListNode *result = [day03 mergeKLists4:array];
    while (result) {
      NSLog(@"val is %d.",result.val);
      result = result.next;
    }
}

- (void)testDay04
{
    Day04 *day04 = [[Day04 alloc]init];
    
    //树一
    TreeNode *tree1 = [[TreeNode alloc]initWithVal:2];
    TreeNode *tree1Left = [[TreeNode alloc]initWithVal:1];
    tree1.left = tree1Left;
    TreeNode *tree1Right = [[TreeNode alloc]initWithVal:3];
    tree1.right = tree1Right;
    
    //树二
    TreeNode *tree2 = [[TreeNode alloc]initWithVal:5];
    TreeNode *tree2Left = [[TreeNode alloc]initWithVal:1];
    tree2.left = tree2Left;
    TreeNode *tree2Right = [[TreeNode alloc]initWithVal:4];
    tree2.right = tree2Right;
    TreeNode *tree2RightL = [[TreeNode alloc]initWithVal:3];
    tree2Right.left = tree2RightL;
    TreeNode *tree2RightR = [[TreeNode alloc]initWithVal:6];
    tree2Right.right = tree2RightR;

    if ([day04 isValidBST3:tree1]) {
        NSLog(@"Yes.");
    } else {
        NSLog(@"No.");
    }
}

- (void)testDay05
{
    Day05 *day05 = [[Day05 alloc]init];
    
    //树
    TreeNode *root = [[TreeNode alloc]initWithVal:-10];
    TreeNode *rootLeft = [[TreeNode alloc]initWithVal:9];
    root.left = rootLeft;
    TreeNode *rootRight = [[TreeNode alloc]initWithVal:20];
    root.right = rootRight;
    TreeNode *rootRightL = [[TreeNode alloc]initWithVal:15];
    rootRight.left = rootRightL;
    TreeNode *rootRightR = [[TreeNode alloc]initWithVal:7];
    rootRight.right = rootRightR;

    NSLog(@"sum = %d",[day05 maxPathSum:root]);
}

@end
