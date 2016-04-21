//
//  UIView+gunDong.m
//  MyTools
//
//  Created by 李轩霖 on 15/12/14.
//  Copyright © 2015年 李轩霖. All rights reserved.
//

#import "UIView+gunDong.h"

@interface UIView (gunDong)

@property (nonatomic , assign) int temp;

@end

@implementation UIView (gunDong)

-(void)setViews:(NSArray *)views{

    self.views = views;
    
    for (self.temp = 0; self.temp < views.count; ++ self.temp) {
        
        UIView *view = views[self.temp];
        view.tag = self.temp;
        UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:view action:@selector(swipeGesture:)];
        [view addGestureRecognizer:swipe];
    }
    
}

- (void)swipeGesture:(UISwipeGestureRecognizer *)recoginzer
{
    
    CGPoint from = recoginzer.view.center;
    CGPoint to;
    
    //NSLog(@"扫了。。。");
//    if (recoginzer.direction == UISwipeGestureRecognizerDirectionDown) {
//        NSLog(@"向下扫。。");
//        if(self.tag = ){
//        to = CGPointMake(from.x,from.y - 50);
//        }else{
//        
//        }
//    }
    // 通过动画的方式执行
    [UIView animateWithDuration:0.5 animations:^{
        recoginzer.view.center = to;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.5 animations:^{
            recoginzer.view.center = from;
        }];
    }];
}

@end
