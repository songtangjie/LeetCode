//
//  Day23.m
//  LeetCode
//
//  Created by william on 2020/1/27.
//  Copyright © 2020 william. All rights reserved.
//

#import "Day23.h"

@implementation Node

- (instancetype)initWithVal:(int)val next:(Node *)next random:(Node *)random
{
    if (self = [super init]) {
        self.val = val;
        self.next = next;
        self.random = random;
    }
    return self;
}

- (id)copyWithZone:(nullable NSZone *)zone
{
    return self;
}

@end

@interface Day23()

@property (nonatomic, strong) NSMutableDictionary *visitedDict;
@property (nonatomic, strong) NSMutableDictionary *visited;

@end

@implementation Day23

/*
 * 新节点穿插在旧的中间
 * 时间复杂度:O(n)，空间复杂度:O(1)
 */
- (Node *)copyRandomList:(Node *)head
{
    if (!head) {
        return head;
    }
    
    Node *ptr = head;
    while (ptr) {
        Node *newNode = [[Node alloc] initWithVal:ptr.val next:nil random:nil];
        
        // 串起来复制的节点 A->A'->B->B'->C->C'
        newNode.next = ptr.next;
        ptr.next = newNode;
        ptr = newNode.next;
    }
    
    ptr = head;
    
    //把复制的节点的random指针指向新复制的节点
    while (ptr) {
        ptr.next.random = ptr.random ? ptr.random.next : nil;
        ptr = ptr.next.next;
    }
    
    Node *ptr_old_list = head;
    Node *ptr_new_list = head.next;
    Node *head_old = head.next;
    while (ptr_old_list) {
        ptr_old_list.next = ptr_old_list.next.next;
        ptr_new_list.next = ptr_new_list.next ? ptr_new_list.next.next : nil;
        ptr_old_list = ptr_old_list.next;
        ptr_new_list = ptr_new_list.next;
    }
    
    return head_old;
}

/*
 * 迭代法
 * 时间复杂度:O(n)，空间复杂度:O(n)
 */
- (Node *)copyRandomList2:(Node *)head
{
    if (!head) {
        return head;
    }
    
    Node *oldNode = head;
    
    Node *newNode = [[Node alloc] initWithVal:oldNode.val next:nil random:nil];
    [self.visited  setValue:newNode forKey:oldNode];
    
    while (oldNode) {
        newNode.next = [self getCloneNode: oldNode.next];
        newNode.random = [self getCloneNode: oldNode.random];
        
        oldNode = oldNode.next;
        newNode = newNode.next;
    }
    
    return self.visited[head];
}

///获取拷贝的节点，没有则创建一个放在字典里
- (Node *)getCloneNode:(Node *)node
{
    if (node) {
        if (!self.visited[node]) {
            [self.visited setValue:[[Node alloc] initWithVal:node.val next:nil random:nil] forKey:node];
        }
        return self.visited[node];
    }
    return nil;
}

/*
 * 回溯法
 * 时间复杂度:O(n)，空间复杂度:O(n)
 */
- (Node *)copyRandomList1:(Node *)head
{
    if (!head) {
        return head;
    }
    
    if (self.visitedDict[head]) {
        return self.visitedDict[head];
    }
    
    Node *node = [[Node alloc] initWithVal:head.val next:nil random:nil];
    [self.visitedDict setValue:node forKey:head];
    
    node.next = [self copyRandomList1:head.next];
    node.random = [self copyRandomList1:head.random];
    
    return node;
}

- (NSMutableDictionary *)visitedDict
{
    if (_visitedDict == nil) {
        _visitedDict = [NSMutableDictionary dictionary];
    }
    return _visitedDict;
}

- (NSMutableDictionary *)visited
{
    if (_visited == nil) {
        _visited = [NSMutableDictionary dictionary];
    }
    return _visited;
}

@end
