//
//  LFlagView.h
//  Solomon-PickerView(一列  国旗)
//
//  Created by MS on 15-7-9.
//  Copyright (c) 2015年 Solomon. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LFlag;

@interface LFlagView : UIView

@property (nonatomic, strong) LFlag *flag;
+ (instancetype)flagViewWithResuingView:(UIView *)resuingView;
+ (CGFloat)flagViewHeight;

@end
