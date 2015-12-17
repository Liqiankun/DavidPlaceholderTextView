//
//  ViewController.m
//  DavidPlaceholderTextView
//
//  Created by DavidLee on 15/12/14.
//  Copyright © 2015年 DavidLee. All rights reserved.
//

#import "ViewController.h"
#import "DavidPlaceholderTextView.h"
@interface ViewController ()<UITextViewDelegate>


@property(nonatomic,strong)DavidPlaceholderTextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"PlaceholderTextView";
    self.textView = [[DavidPlaceholderTextView alloc] initWithFrame:self.view.bounds];
    self.textView.backgroundColor = [UIColor whiteColor];
    self.textView.placeholder = @"我有占位提示文字奥...";
    self.textView.placeholderColor = [UIColor grayColor];
    self.textView.font = [UIFont systemFontOfSize:20];
    //如果想实现下拉收起键盘alwaysBounceVertical必须设置
    self.textView.alwaysBounceVertical = YES;
    self.textView.delegate = self;
    [self.view addSubview:self.textView];
}

//下拉的时候收起键盘，如果需要是实现下拉收起键盘请实现此方法
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
