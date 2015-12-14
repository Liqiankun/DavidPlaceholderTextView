//
//  DavidPlaceholderTextView.h
//  DavidPlaceholderTextView
//
//  Created by DavidLee on 15/12/14.
//  Copyright © 2015年 DavidLee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DavidPlaceholderTextView : UITextView

/** 占位提示文字 */
@property(nonatomic,copy) NSString *placeholder;

/** 占位提示文字的颜色 */
@property(nonatomic,strong) UIColor *placeholderColor;
@end
