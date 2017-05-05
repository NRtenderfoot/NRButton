//
//  UIButton+Properties.h
//  ePay
//
//  Created by neetika  on 2/13/17.
//  Copyright © 2017 Neetika Rana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Properties)

-(void)setCornerRadius:(CGFloat)radius andBorderColor:(UIColor *)color andBorderWidth:(CGFloat)width andBackgroundColor:(UIColor*)bgColor;
-(void)setCornerRadius:(CGFloat)radius;
- (void)setGlowColor:(UIColor *)shadowColor originalColor:(UIColor *)originalColor;


@end
