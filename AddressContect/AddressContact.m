//
//  AddressContact.m
//  AddressContect
//
//  Created by 张天琦 on 15/8/22.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import "AddressContact.h"

@implementation AddressContact
-(id)initWithName:(NSString * )name number:(NSString * )number{
    
    self = [super init];
    if (self) {
        _name = name;
        _number= number;
        
    }
    return self;
}
-(NSComparisonResult)compareByName:(AddressContact *)aContact{
    return [_name compare:[aContact name]];
}
-(NSComparisonResult)compareByAge:(AddressContact *)aContact{
    
    if (_age <[aContact age]) {
        return NSOrderedDescending;
    }else if(_age ==[aContact age]){
        return NSOrderedSame;
    }else{
        return NSOrderedAscending;
    }
}
@end
