//
//  NSArray+Swizzling.m
//  Keyboard_AOP
//
//  Created by muyu on 16/7/5.
//  Copyright © 2016年 muyu. All rights reserved.
//

#import "NSArray+Swizzling.h"

@implementation NSArray (Swizzling)

- (id)myLastObject
{
    id ret = [self myLastObject];
    NSLog(@"****** my last object *****");
    return ret;
}

@end
