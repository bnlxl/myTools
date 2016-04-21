//
//  UIView+Extension.m
//  MengQuietlyCalendar
//
//  Created by diana on 15/8/4.
//  Copyright (c) 2015年 mengquietly. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

- (void)setX:(CGFloat) x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (void)setY:(CGFloat) y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat) x {
    return self.frame.origin.x;
}

- (CGFloat) y {
    return self.frame.origin.y;
}

- (void)setCenterX:(CGFloat) centerX {
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat) centerX {
    return self.center.x;
}

- (void)setCenterY:(CGFloat) centerY {
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat) centerY {
    return self.center.y;
}

- (void)setWidth:(CGFloat) width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setHeight:(CGFloat) height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat) height {
    return self.frame.size.height;
}

- (CGFloat) width {
    return self.frame.size.width;
}

- (void)setSize:(CGSize) size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize) size {
    return self.frame.size;
}

- (void)setOrigin:(CGPoint) origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGPoint) origin {
    return self.frame.origin;
}

- (CGFloat)right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)left {
    return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (UIViewController*)parentController {
    for (UIView * next = [self superview]; next; next = next.superview) {
        UIResponder * nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)nextResponder;
        }
    }
    return nil;
}

+(void)roundView:(UIView *)view WithWidth:(CGFloat)width{
    
    view.layer.borderWidth = 1;
    view.layer.borderColor = [UIColor clearColor].CGColor;
    view.layer.cornerRadius = width/2;
    view.layer.masksToBounds = YES;
    
}

-(void)roundWithWidth:(CGFloat)width andBorderColor:(nullable UIColor *)color{
    self.layer.borderWidth = 0.5;
    if(color){
        self.layer.borderColor = color.CGColor;
    }else{
        self.layer.borderColor = [UIColor clearColor].CGColor;
    }
    self.layer.cornerRadius = width/2;
    self.layer.masksToBounds = YES;
}

@end
