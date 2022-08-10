//
//  UIView+MFSugarGrammarBase.h
//  MFSugarGrammar
//
//  Created by Administer on 2022/8/10.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (MFSugarGrammarBase)

- (void)configureShadowWithColor:(UIColor *)shadowColor
                    shadowOffset:(CGSize)shadowOffset
                   shadowOpacity:(CGFloat)shadowOpacity
                    shadowRadius:(CGFloat)shadowRadius;

- (void)configureShadowWithColor:(UIColor *)shadowColor;

- (void)configureShadowWithColor:(UIColor *)shadowColor
                    shadowRadius:(CGFloat)shadowRadius;

- (void)configureShadowWithColor:(UIColor *)shadowColor
                    shadowOffset:(CGSize)shadowOffset;

- (void)configureShadowWithColor:(UIColor *)shadowColor
                   shadowOpacity:(CGFloat)shadowOpacity;

- (void)configureShadowWithColor:(UIColor *)shadowColor
                    shadowOffset:(CGSize)shadowOffset
                   shadowOpacity:(CGFloat)shadowOpacity;

- (void)configureBroderWithBorderWidth:(CGFloat)borderWidth
                                 color:(UIColor *)borderColor;

@end

NS_ASSUME_NONNULL_END
