//
//  LFlag.h
//  Solomon-PickerView(一列  国旗)
//
//  Created by MS on 15-7-9.
//  Copyright (c) 2015年 Solomon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LFlag : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *icon;

+ (instancetype)flagWithDict:(NSDictionary *)dict;
- (instancetype)initWithDict:(NSDictionary *)dict;

@end
