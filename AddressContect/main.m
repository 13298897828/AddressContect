//
//  main.m
//  AddressContect
//
//  Created by 张天琦 on 15/8/22.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressContact.h"
#import "AddressBook.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        AddressContact * a1 =[[AddressContact alloc]initWithName:@"Aaaa" number:@"f"];
        AddressContact * a2 =[[AddressContact alloc]initWithName:@"BBa" number:@"f"];
        AddressContact * b1 =[[AddressContact alloc]initWithName:@"Cdsd" number:@"m"];
        AddressContact * a3 =[[AddressContact alloc]initWithName:@"AADF" number:@"f"];
        NSMutableArray * groupA = [NSMutableArray array];
        [groupA addObject:a1];
        [groupA addObject:a2];
        [groupA addObject:a3];
    }
    return 0;
}
