//
//  AddressBook.h
//  AddressContect
//
//  Created by 张天琦 on 15/8/22.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import <Foundation/Foundation.h>
@class AddressContact;
@interface AddressBook : NSObject
@property NSMutableDictionary * addressBook;
-(void)addContect:(AddressContact *)aContact;
-(NSArray *)contactsWithGroupName:(NSString *)groupName;
-(AddressContact * )searchContactByPhoneNum:(NSString *)phoneNum;
-(NSArray *)contactsWithSex:(NSString * )sex;

@end
