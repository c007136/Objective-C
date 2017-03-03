//
//  main.m
//  MethodSwizzling
//
//  Created by muyu on 16/7/5.
//  Copyright © 2016年 muyu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+Swizzling.h"
#import "NSObject+RNSwizzle.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        [NSArray swizzleSelector:@selector(lastObject) withSelector:@selector(myLastObject)];
        
        NSArray * array = @[@"0", @"1", @"2"];
        NSString * string = [array lastObject];
        NSLog(@"string is %@", string);
    }
    return 0;
}
