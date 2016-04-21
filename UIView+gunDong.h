//
//  UIView+gunDong.h
//  MyTools
//
//  Created by 李轩霖 on 15/12/14.
//  Copyright © 2015年 李轩霖. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (gunDong)<UIGestureRecognizerDelegate>

//滑动距离
@property (nonatomic , assign) CGFloat spaced;
//添加view 
@property (nonatomic , strong) NSArray *views;

-(void)shangxiaGunDongWithViews:(NSArray *)views;

@end
