//
//  AddressContact.h
//  AddressContect
//
//  Created by 张天琦 on 15/8/22.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressContact : NSObject
@property (nonatomic,assign)NSString * name;
@property (nonatomic,assign)NSString * sex;
@property (nonatomic,assign)NSString * number;
@property (nonatomic,assign)NSString * groupNum;
@property (nonatomic,assign)NSString * age;
-(id)initWithName:(NSString * )name number:(NSString * )number;
-(NSComparisonResult)compareByName:(AddressContact *)aContact;
-(NSComparisonResult)compareByAge:(AddressContact *)aContact;
@end
