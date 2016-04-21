//
//  UILabel+EX.h
//  neeq_second
//
//  Created by 李轩霖 on 16/4/8.
//  Copyright © 2016年 TianXing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (EX)

/**
 *  设置文字每行的间距
 *
 *  @param labelText 文字
 *  @param lines     行数
 *  @param fontSize  字体大小
 *  @param lineSpace 每行行宽(注意,系统行宽会比 UI 测的多一些)
 */
-(void)setText:(NSString *)labelText withLines:(NSInteger)lines andFont:(CGFloat)fontSize andLineSpace:(NSInteger)lineSpace;

-(void)setTitleLabel:(NSString *)title;


/**
 *  计算文字高度
 *
 *  @param lineSepace 文字间距
 *
 *  @return 大小
 */
- (CGSize)contentSizeWithLineSepace:(CGFloat)lineSepace;

///**
// *  添加每一行的标题
// *
// *  @param title 标题内容
// *
// *  @return label
// */
//-(instancetype)initWithTitle:(NSString *)title;

@end
