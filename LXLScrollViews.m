//
//  LXLScrollViews.m
//  MyTools
//
//  Created by 李轩霖 on 15/12/14.
//  Copyright © 2015年 李轩霖. All rights reserved.
//

#import "LXLScrollViews.h"
#import <UIKit/UIKit.h>
#import "UIView+Extension.h"

@interface LXLScrollViews ()<UIGestureRecognizerDelegate>

@property (nonatomic , strong) UIView *view;
@property (nonatomic , strong) NSArray *views;
@property (nonatomic , assign) CGFloat spaced;

@end

@implementation LXLScrollViews

-(void)initWithViews:(NSArray *)views andSpaced:(double)spaced InController:(UIViewController *)vc{
    self.views = views;
    for (int i = 0; i < views.count; i++) {
        self.view = views[i];
        self.view.tag = i;
        //添加手势
        UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:vc action:@selector(swipeGesture:)];
        [self.view addGestureRecognizer:swipe];
    }
}

- (void)swipeGesture:(UISwipeGestureRecognizer *)recoginzer
{
    NSLog(@"扫了。。。");
    if (recoginzer.direction == UISwipeGestureRecognizerDirectionDown) {
        NSLog(@"向下扫。。");
        if(self.view.tag == self.views.count - 1){
            // 通过动画的方式执行
            [UIView animateWithDuration:0.5 animations:^{
                
                for (UIView *v in self.views) {
                    v.y += self.spaced;
                }
//                recoginzer.view.y += self.spaced;
            } completion:^(BOOL finished) {
                //找到最下面的视图
                UIView *uiv ;
                for (int i = 0; i < self.views.count; i ++) {
                    NSInteger *f = MIN((int)[(UIView *)self.views[i] y],(int) [(UIView *)self.views[i+1] y]);
                    if (f == (int)[(UIView *)self.views[i] y]) {
                        uiv = self.views[i];
                    }
                }
                //将这个视图放在最下面视图的下面
                [self.view.superview insertSubview:self.view belowSubview:uiv];
                [UIView animateWithDuration:0.5 animations:^{
                    //这是滑动 View 滑动到的位置
                    self.view.y = uiv.y - self.spaced;
                }];
            }];
        }else{
            NSLog(@"不是最后一个..不予理睬");
        }
    }
}


@end
