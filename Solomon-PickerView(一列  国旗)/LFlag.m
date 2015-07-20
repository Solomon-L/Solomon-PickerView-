//
//  LFlag.m
//  Solomon-PickerView(一列  国旗)
//
//  Created by MS on 15-7-9.
//  Copyright (c) 2015年 Solomon. All rights reserved.
//

#import "LFlag.h"

@implementation LFlag

+ (instancetype)flagWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}
- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

@end
