//
//  AddressBook.m
//  AddressContect
//
//  Created by 张天琦 on 15/8/22.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import "AddressBook.h"
#import "AddressContact.h"
@implementation AddressBook
-(id)init{
    self = [super init];
    if (self) {
        _addressBook = [NSMutableDictionary dictionary];
    }
    return self;
}
-(void)addContect:(AddressContact *)aContact{
    if ((aContact.name == nil)||(aContact.number == nil)) {
        NSLog(@"添加失败!");
    }else{
        NSMutableArray * first = [aContact.name substringToIndex:1];
        if ([_addressBook objectForKey:first]==nil) {
            NSMutableArray * arr = [NSMutableArray arrayWithObject:aContact];
            [_addressBook setObject:arr forKey:first];
        }else {
            [_addressBook setObject:aContact forKey:first];
        }
    }
    
}
-(NSArray *)contactsWithGroupName:(NSString *)groupName{
    NSArray * arr =[_addressBook objectForKey:groupName];
    [arr sortedArrayUsingSelector:@selector(compareByName::)];
    return arr;
}
-(AddressContact * )searchContactByPhoneNum:(NSString *)phoneNum{
    for (NSString * group in _addressBook) {
        for (AddressContact * c in [_addressBook objectForKey:group]) {
            if ([phoneNum isEqualToString:phoneNum]) {
                return c;
            }
        }
    }
    return nil;
}
-(NSArray *)contactsWithSex:(NSString * )sex{
    
    NSMutableArray * arr = [NSMutableArray array];
    for (id group in _addressBook) {
        for (id c in group) {
            if ([sex isEqualToString:[c sex]]) {
                [arr  addObject:c];
            }
        }
        

    }
    [arr sortUsingSelector:@selector(compare:)];
    return arr;
}
@end
