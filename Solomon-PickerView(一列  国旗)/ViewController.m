//
//  ViewController.m
//  Solomon-PickerView(一列  国旗)
//
//  Created by MS on 15-7-9.
//  Copyright (c) 2015年 Solomon. All rights reserved.
//

#import "ViewController.h"
#import "LFlag.h"
#import "LFlagView.h"
@interface ViewController ()<UIPickerViewDelegate,UIPickerViewDataSource>
@property (nonatomic, strong) NSArray *flags;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSArray *)flags
{
    if (_flags == nil) {
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"flags.plist" ofType:nil]];
        NSMutableArray *flagArray = [NSMutableArray array];
        for (NSDictionary *dict in dictArray) {
            LFlag *flag = [LFlag flagWithDict:dict];
            [flagArray addObject:flag];
        }
        _flags = flagArray;
    }
    return _flags;
}
#pragma mark - 数据源方法
/** 一共有多少列 */
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
/** 第component列显示多少行 */
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return self.flags.count;
}
#pragma mark - 代理方法
/**
 *  第component列的第row行显示什么文字
 */
//- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
//{
//    MJFlag *flag = self.flags[row];
//    return flag.name;
//}
/**
 *  第component列的第row行显示怎样的view
 *  每当有一行内容出现在视野范围内,就会调用(调用频率高)
 */
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    // 1.创建flagView
    LFlagView *flagView = [LFlagView flagViewWithResuingView:view];
    //    MJFlagView *flagView = (MJFlagView *)view;
    //    if (flagView == nil) { // 没有可循环利用的view
    //        flagView = [MJFlagView flagView];
    //    }
    
    // 2.传递模型
    flagView.flag = self.flags[row];
    
    return flagView;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return [LFlagView flagViewHeight];
    //    return 44;
}
@end
