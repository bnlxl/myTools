//
//  UIBarButtonItem+Create.h
//  ItcastWeibo
//
//  Created by yz on 14/11/5.
//  Copyright (c) 2014年 iThinker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Create)

+ (instancetype)barButtonItemWithImage:(NSString *)imageName highImage:(NSString *)highImageName target:(id)target action:(SEL)action;


@end
