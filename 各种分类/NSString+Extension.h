//
//  NSString+Extension.h
//  nightChat
//
//  Created by diana on 15/8/4.
//  Copyright (c) 2015年 mengquietly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)

/**
 *  返回字符串所占用的尺寸
 *
 *  @param font    字体
 *  @param maxSize 最大尺寸
 */
- (CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize;

- (CGRect)textRectWithSize:(CGSize)textSize attributes:(NSDictionary *) attributes;

- (BOOL) validateEmail;

@end
