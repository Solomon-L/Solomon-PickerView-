//
//  LFlagView.m
//  Solomon-PickerView(一列  国旗)
//
//  Created by MS on 15-7-9.
//  Copyright (c) 2015年 Solomon. All rights reserved.
//

#import "LFlagView.h"
#import "LFlag.h"

@interface LFlagView()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *iconView;

@end

@implementation LFlagView

+ (instancetype)flagViewWithResuingView:(UIView *)resuingView
{
    if (resuingView == nil) {
        return [[[NSBundle mainBundle] loadNibNamed:@"LFlagView" owner:nil options:nil] lastObject];
    } else {
        return (LFlagView *)resuingView;
    }
}
- (void)setFlag:(LFlag *)flag
{
    _flag = flag;
    // 1.名称
    self.nameLabel.text = flag.name;
    // 2.图标
    self.iconView.image = [UIImage imageNamed:flag.icon];
}
+ (CGFloat)flagViewHeight
{
    return 44;
}

@end
