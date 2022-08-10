//
//  UIButton+MFSugarGrammar.h
//  Expecta
//
//  Created by Neal Wills on 2022/8/5.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (MFSugarGrammar)

+ (__kindof UIButton *(^)(void))init;
+ (__kindof UIButton *(^)(CGRect))initWithFrame;
- (__kindof UIButton *(^)(__kindof UIView *))setSuperView;
- (__kindof UIButton *(^)(CGRect))setFrame;
- (__kindof UIButton *(^)(BOOL))setClipsToBounds;
- (__kindof UIButton *(^)(BOOL))setStateEnable;
- (__kindof UIButton *(^)(CGFloat))setLayerCornerRadius;
- (__kindof UIButton *(^)(CGFloat))setAlpha;
- (__kindof UIButton *(^)(UIColor *, CGFloat))setLayerBorderColorWidth;
- (__kindof UIButton *(^)(UIImage * _Nullable))setImage;
- (__kindof UIButton *(^)(UIImage *, UIControlState))setImageFoRState;
- (__kindof UIButton *(^)(NSString *))setTitle;
- (__kindof UIButton *(^)(UIColor *))setTitleColor;
- (__kindof UIButton *(^)(UIFont *))setTitleFont;
- (__kindof UIButton *(^)(UIColor *))setTintColor;
- (__kindof UIButton *(^)(int))setTitleNumberOfLines;
//- (__kindof UIButton *(^)(NSString *))setNetImage;
//- (__kindof UIButton *(^)(NSString *, UIImage *))setNetImageWithPlaceHolder;
- (__kindof UIButton *(^)(UIImage * _Nullable))setBackgroundImage;
- (__kindof UIButton *(^)(UIColor *))setBackgroundColor;
- (__kindof UIButton *(^)(id, SEL))setAddTargetAction;
- (__kindof UIButton *(^)(BOOL))setUserInteractionEnabled;

//- (__kindof UIButton *(^)(UIButtonIconLocationToTitleStyle))setIconLocationToTitle;
//- (__kindof UIButton *(^)(UIButtonIconLocationToTitleStyle, CGFloat))setIconLocationToTitleWithSpacing;

- (__kindof UIButton *(^)(UIColor *))setShadowWithColor;
- (__kindof UIButton *(^)(UIColor *, CGFloat))setShadowWithColorRadius;
- (__kindof UIButton *(^)(UIColor *, CGFloat))setShadowWithColorOpactity;
- (__kindof UIButton *(^)(UIColor *, CGSize, CGFloat, CGFloat))setShadowWithColorOffsetOpactityRadius;

- (__kindof UIButton *(^)(UIColor *))setBorderWithColor;
- (__kindof UIButton *(^)(UIColor *, CGFloat))setBorderWithColorWidth;

- (__kindof UIButton *(^)(UIControlContentHorizontalAlignment))setContentHorizontalAlignment;
- (__kindof UIButton *(^)(UIControlContentVerticalAlignment))setContentVerticalAlignment;

- (__kindof UIButton *(^)(BOOL))setHidden;

@end

NS_ASSUME_NONNULL_END
