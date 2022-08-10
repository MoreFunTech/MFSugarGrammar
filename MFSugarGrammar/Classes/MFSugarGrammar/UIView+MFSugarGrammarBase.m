//
//  UIView+MFSugarGrammarBase.m
//  MFSugarGrammar
//
//  Created by Administer on 2022/8/10.
//

#import "UIView+MFSugarGrammarBase.h"

@implementation UIView (MFSugarGrammarBase)

- (void)configureShadowWithColor:(UIColor *)shadowColor
                    shadowOffset:(CGSize)shadowOffset
                   shadowOpacity:(CGFloat)shadowOpacity
                    shadowRadius:(CGFloat)shadowRadius {
    self.layer.shadowColor = shadowColor.CGColor;
    self.layer.shadowOffset = shadowOffset;
    self.layer.shadowOpacity = [@(shadowOpacity) floatValue];
    self.layer.shadowRadius = shadowRadius;
}

- (void)configureShadowWithColor:(UIColor *)shadowColor {
    [self configureShadowWithColor:shadowColor
                      shadowOffset:CGSizeMake(4, 4)
                     shadowOpacity:0.6
                      shadowRadius:8];
}

- (void)configureShadowWithColor:(UIColor *)shadowColor
                    shadowRadius:(CGFloat)shadowRadius {
    [self configureShadowWithColor:shadowColor
                      shadowOffset:CGSizeMake(4, 4)
                     shadowOpacity:0.6
                      shadowRadius:shadowRadius];
}

- (void)configureShadowWithColor:(UIColor *)shadowColor
                    shadowOffset:(CGSize)shadowOffset {
    [self configureShadowWithColor:shadowColor
                      shadowOffset:shadowOffset
                     shadowOpacity:0.6
                      shadowRadius:8];
}

- (void)configureShadowWithColor:(UIColor *)shadowColor
                   shadowOpacity:(CGFloat)shadowOpacity {
    [self configureShadowWithColor:shadowColor
                      shadowOffset:CGSizeMake(4, 4)
                     shadowOpacity:shadowOpacity
                      shadowRadius:8];
}

- (void)configureShadowWithColor:(UIColor *)shadowColor
                    shadowOffset:(CGSize)shadowOffset
                   shadowOpacity:(CGFloat)shadowOpacity {
    [self configureShadowWithColor:shadowColor
                      shadowOffset:shadowOffset
                     shadowOpacity:shadowOpacity
                      shadowRadius:8];
}

- (void)configureBroderWithBorderWidth:(CGFloat)borderWidth
                                 color:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
    self.layer.borderWidth = borderWidth;
}

@end
