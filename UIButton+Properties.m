//
//  UIButton+Properties.m
//  ePay
//
//  Created by neetika  on 2/13/17.
//  Copyright © 2017 Neetika Rana. All rights reserved.
//

#import "UIButton+Properties.h"

@implementation UIButton (Properties)

-(void)setCornerRadius:(CGFloat)radius andBorderColor:(UIColor *)color andBorderWidth:(CGFloat)width andBackgroundColor:(UIColor*)bgColor
{
    self.layer.cornerRadius = radius;
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = width;
    self.backgroundColor = bgColor;
    self.clipsToBounds = YES;
}

-(void)setCornerRadius:(CGFloat)radius
{
    self.layer.cornerRadius = radius;
    self.clipsToBounds = YES;
}

- (void)setGlowColor:(UIColor *)shadowColor originalColor:(UIColor *)originalColor
{
    self.layer.shadowColor = shadowColor.CGColor;
    self.layer.shadowRadius = 10.0f;
    self.layer.shadowOpacity = 1.0f;
    self.layer.shadowOffset = CGSizeZero;
    
    [UIView animateWithDuration:0.5f delay:0 options:UIViewAnimationOptionAutoreverse | UIViewAnimationCurveEaseInOut | UIViewAnimationOptionRepeat | UIViewAnimationOptionAllowUserInteraction  animations:^{
        
        [UIView setAnimationRepeatCount:1];
        self.transform = CGAffineTransformMakeScale(1.1f, 1.1f);
    } completion:^(BOOL finished) {
        
        self.layer.shadowRadius = 0.0f;
        self.transform = CGAffineTransformMakeScale(1.0f, 1.0f);
        self.layer.shadowColor = originalColor.CGColor;
    }];
}


@end
