//
//  DavidPlaceholderTextView.m
//  DavidPlaceholderTextView
//
//  Created by DavidLee on 15/12/14.
//  Copyright © 2015年 DavidLee. All rights reserved.
//

#import "DavidPlaceholderTextView.h"

@implementation DavidPlaceholderTextView

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidChange) name:UITextViewTextDidChangeNotification object:self];
    }
    
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidChange) name:UITextViewTextDidChangeNotification object:self];
    }
    
    return self;
}

-(void)setPlaceholder:(NSString *)placeholder
{
    _placeholder = placeholder;
    [self setNeedsDisplay];
}

-(void)setPlaceholderColor:(UIColor *)placeholderColor
{
    _placeholderColor = placeholderColor;
    [self setNeedsDisplay];
}

-(void)setText:(NSString *)text
{
    [super setText:text];
    [self setNeedsDisplay];
}

-(void)setFont:(UIFont *)font
{
    [super setFont:font];
    [self setNeedsDisplay];
}


-(void)textDidChange
{
    [self setNeedsDisplay];
}

-(void)drawRect:(CGRect)rect
{
    if (self.hasText) return;
    
    NSMutableDictionary *attributeDic = [[NSMutableDictionary alloc] init];
    attributeDic[NSForegroundColorAttributeName] = self.placeholderColor?self.placeholderColor:[UIColor grayColor];
    attributeDic[NSFontAttributeName] = self.font;
    
    CGFloat x = 5;
    CGFloat w = rect.size.width - 2 * x;
    CGFloat y = 8;
    CGFloat h = rect.size.height - 2 * y;
    CGRect placeholderRect = CGRectMake(x, y, w, h);
    [self.placeholder?self.placeholder:@"我有占位提示文字奥..." drawInRect:placeholderRect withAttributes:attributeDic];
}

-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
@end
