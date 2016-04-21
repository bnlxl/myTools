//
//  UILabel+EX.m
//  neeq_second
//
//  Created by 李轩霖 on 16/4/8.
//  Copyright © 2016年 TianXing. All rights reserved.
//

#import "UILabel+EX.h"

@implementation UILabel (EX)

-(void)setText:(NSString *)labelText withLines:(NSInteger)lines andFont:(CGFloat)fontSize andLineSpace:(NSInteger)lineSpace{
    
    if ((!labelText)||[labelText isKindOfClass:[NSNull class]]||labelText == NULL) {
        return;
    }
    
    if (labelText) {
        [self setFont:[UIFont systemFontOfSize:fontSize]];
        [self setNumberOfLines:lines];
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:labelText];
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        [paragraphStyle setLineSpacing:lineSpace];//调整行间距
        
        [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [labelText length])];
        self.attributedText = attributedString;
    }
//    [self sizeToFit];
    
}

- (CGSize)contentSizeWithLineSepace:(CGFloat)lineSepace {
    NSMutableParagraphStyle * paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineBreakMode = self.lineBreakMode;
    paragraphStyle.alignment = self.textAlignment;
    paragraphStyle.lineSpacing = lineSepace;
    
    NSDictionary * attributes = @{NSFontAttributeName : self.font,
                                  NSParagraphStyleAttributeName : paragraphStyle};
    
    CGSize contentSize = [self.text boundingRectWithSize:CGSizeMake(self.frame.size.width, MAXFLOAT)
                                                 options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading)
                                              attributes:attributes
                                                 context:nil].size;
    return contentSize;
}

-(void)setTitleLabel:(NSString *)title{
    self.textColor = [UIColor redColor];
    self.text = title;
    self.font = [UIFont systemFontOfSize:15];
}

@end
