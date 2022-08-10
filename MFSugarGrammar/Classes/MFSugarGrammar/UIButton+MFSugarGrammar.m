//
//  UIButton+MFSugarGrammar.m
//  Expecta
//
//  Created by Neal Wills on 2022/8/5.
//

#import "UIButton+MFSugarGrammar.h"
#import "UIView+MFSugarGrammarBase.h"

@implementation UIButton (MFSugarGrammar)

+ (__kindof UIButton *(^)(void))init {
    return ^{
        return [[self alloc] init];
    };
}

+ (__kindof UIButton *(^)(CGRect))initWithFrame {
    return ^(CGRect frame) {
        __kindof UIButton *label = [[self alloc] init];
        label.frame = frame;
        return label;
    };
}

- (__kindof UIButton *(^)(__kindof UIView *))setSuperView {
    __weak typeof(self) weakSelf = self;
    return ^(UIView *contentView) {
        if (contentView) {
            [contentView addSubview:weakSelf];
        }
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(CGRect))setFrame {
    __weak typeof(self) weakSelf = self;
    return ^(CGRect frame) {
        weakSelf.frame = frame;
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(BOOL))setClipsToBounds {
    __weak typeof(self) weakSelf = self;
    return ^(BOOL clipsToBounds) {
        weakSelf.clipsToBounds = clipsToBounds;
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(BOOL))setStateEnable {
    __weak typeof(self) weakSelf = self;
    return ^__kindof UIButton *(BOOL enable) {
        weakSelf.enabled = enable;
        return weakSelf;
    };
}


- (__kindof UIButton *(^)(CGFloat))setLayerCornerRadius {
    __weak typeof(self) weakSelf = self;
    return ^(CGFloat layerCornerRadius) {
        weakSelf.layer.cornerRadius = layerCornerRadius;
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(CGFloat))setAlpha {
    __weak typeof(self) weakSelf = self;
    return ^(CGFloat alpha) {
        weakSelf.alpha = alpha;
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(UIColor *, CGFloat))setLayerBorderColorWidth {
    __weak typeof(self) weakSelf = self;
    return ^(UIColor *color, CGFloat width) {
        weakSelf.layer.borderColor = color.CGColor;
        weakSelf.layer.borderWidth = width;
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(UIImage *))setImage {
    __weak typeof(self) weakSelf = self;
    return ^(UIImage *image) {
        [weakSelf setImage:image forState:(UIControlStateNormal)];
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(UIImage *, UIControlState))setImageFoRState {
    __weak typeof(self) weakSelf = self;
    return ^(UIImage *image, UIControlState state) {
        [weakSelf setImage:image forState:(state)];
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(NSString *))setTitle {
    __weak typeof(self) weakSelf = self;
    return ^(NSString *title) {
        [weakSelf setTitle:title forState:(UIControlStateNormal)];
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(UIColor *))setTintColor {
    __weak typeof(self) weakSelf = self;
    return ^(UIColor *tintColor) {
        weakSelf.tintColor = tintColor;
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(NSTextAlignment))setTextAlignment {
    __weak typeof(self) weakSelf = self;
    return ^(NSTextAlignment textAlignment) {
        weakSelf.titleLabel.textAlignment = textAlignment;
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(UIColor *))setTitleColor {
    __weak typeof(self) weakSelf = self;
    return ^(UIColor *titleColor) {
        [weakSelf setTitleColor:titleColor forState:(UIControlStateNormal)];
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(int))setTitleNumberOfLines {
    __weak typeof(self) weakSelf = self;
    return ^(int numberOfLines) {
        weakSelf.titleLabel.numberOfLines = numberOfLines;
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(UIFont *))setTitleFont {
    __weak typeof(self) weakSelf = self;
    return ^(UIFont *font) {
        weakSelf.titleLabel.font = font;
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(UIControlContentHorizontalAlignment))setContentHorizontalAlignment {
    __weak typeof(self) weakSelf = self;
    return ^(UIControlContentHorizontalAlignment contentHorizontalAlignment) {
        weakSelf.contentHorizontalAlignment = contentHorizontalAlignment;
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(UIControlContentVerticalAlignment))setContentVerticalAlignment {
    __weak typeof(self) weakSelf = self;
    return ^(UIControlContentVerticalAlignment contentVerticalAlignment) {
        weakSelf.contentVerticalAlignment = contentVerticalAlignment;
        return weakSelf;
    };
}

//- (__kindof UIButton *(^)(NSString *))setNetImage {
//    __weak typeof(self) weakSelf = self;
//    return ^(NSString *netImage) {
//        NSURL *url = [NSURL URLWithString:netImage];
//        if (url) {
//            [weakSelf sd_setImageWithURL:url
//                                forState:UIControlStateNormal
//                        placeholderImage:nil];
//        }
//        return weakSelf;
//    };
//}
//
//- (__kindof UIButton *(^)(NSString *, UIImage *))setNetImageWithPlaceHolder {
//    __weak typeof(self) weakSelf = self;
//    return ^(NSString *netImage, UIImage *image) {
//        NSURL *url = [NSURL URLWithString:netImage];
//        if (url) {
//            [weakSelf sd_setImageWithURL:url
//                                forState:UIControlStateNormal
//                        placeholderImage:image];
//        } else {
//            [weakSelf setImage:image forState:(UIControlStateNormal)];
//        }
//        return weakSelf;
//    };
//}


- (__kindof UIButton *(^)(UIImage *))setBackgroundImage {
    __weak typeof(self) weakSelf = self;
    return ^(UIImage *backgroundImage) {
        [weakSelf setBackgroundImage:backgroundImage forState:(UIControlStateNormal)];
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(UIColor *))setBackgroundColor {
    __weak typeof(self) weakSelf = self;
    return ^(UIColor *backgroundColor) {
        weakSelf.backgroundColor = backgroundColor;
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(id, SEL))setAddTargetAction {
    __weak typeof(self) weakSelf = self;
    return ^(id target, SEL action) {
        [weakSelf addTarget:target action:action forControlEvents:(UIControlEventTouchUpInside)];
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(BOOL))setUserInteractionEnabled {
    __weak typeof(self) weakSelf = self;
    return ^(BOOL userInteractionEnabled) {
        weakSelf.userInteractionEnabled = userInteractionEnabled;
        return weakSelf;
    };
}


//- (__kindof UIButton *(^)(UIButtonIconLocationToTitleStyle))setIconLocationToTitle {
//    __weak typeof(self) weakSelf = self;
//    return ^(UIButtonIconLocationToTitleStyle iconLocationToTitle) {
////        CGFloat spacing = 0;
//        switch (iconLocationToTitle) {
//            case UIButtonIconLocationToTitleStyleTop:
////                weakSelf.titleEdgeInsets = UIEdgeInsets(top: 0, left:-weakSelf.imageSize.width, bottom: -weakSelf.imageSize.height, right: 0);
////                weakSelf.imageEdgeInsets = UIEdgeInsets(top: -weakSelf.titleSize.height, left: 0, bottom: 0, right: -titleSize.width);
////                weakSelf.titleEdgeInsets = UIEdgeInsetsMake(weakSelf.titleLabel.height / 2.0, -weakSelf.imageView.width, -weakSelf.titleLabel.height / 2.0, weakSelf.imageView.width);
//                break;
//            case UIButtonIconLocationToTitleStyleLeft:
//                break;
//            case UIButtonIconLocationToTitleStyleBottom:
//                break;
//            case UIButtonIconLocationToTitleStyleRight:
//                [weakSelf setTitleEdgeInsets:UIEdgeInsetsMake(0, -weakSelf.imageView.width, 0, weakSelf.imageView.width)];
//                [weakSelf setImageEdgeInsets:UIEdgeInsetsMake(0, weakSelf.titleLabel.width, 0, -weakSelf.titleLabel.width)];
//                break;
//        }
//        return weakSelf;
//    };
//}
//
//- (__kindof UIButton *(^)(UIButtonIconLocationToTitleStyle, CGFloat))setIconLocationToTitleWithSpacing {
//    __weak typeof(self) weakSelf = self;
//    return ^(UIButtonIconLocationToTitleStyle iconLocationToTitle, CGFloat spacing) {
//        switch (iconLocationToTitle) {
//            case UIButtonIconLocationToTitleStyleTop:
////                weakSelf.titleEdgeInsets = UIEdgeInsets(top: 0, left:-weakSelf.imageSize.width, bottom: -weakSelf.imageSize.height, right: 0);
////                weakSelf.imageEdgeInsets = UIEdgeInsets(top: -weakSelf.titleSize.height / 2.0, left: 0, bottom: 0, right: -titleSize.width);
////                weakSelf.titleEdgeInsets = UIEdgeInsetsMake(weakSelf.titleLabel.height / 2.0, -weakSelf.imageView.width, -weakSelf.titleLabel.height / 2.0, weakSelf.imageView.width);
//                break;
//            case UIButtonIconLocationToTitleStyleLeft:
//                break;
//            case UIButtonIconLocationToTitleStyleBottom:
//                break;
//            case UIButtonIconLocationToTitleStyleRight:
//                [weakSelf setTitleEdgeInsets:UIEdgeInsetsMake(0, -weakSelf.imageView.width - spacing / 2.0, 0, weakSelf.imageView.width + spacing / 2.0)];
//                [weakSelf setImageEdgeInsets:UIEdgeInsetsMake(0, weakSelf.titleLabel.width + spacing / 2.0, 0, -weakSelf.titleLabel.width + spacing / 2.0)];
//                break;
//        }
//        return weakSelf;
//    };
//}

- (__kindof UIButton *(^)(UIColor *))setShadowWithColor {
    __weak typeof(self) weakSelf = self;
    return ^(UIColor *shadowColor) {
        [weakSelf configureShadowWithColor:shadowColor
                              shadowOffset:CGSizeMake(4, 4)];
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(UIColor *, CGFloat))setShadowWithColorRadius {
    __weak typeof(self) weakSelf = self;
    return ^(UIColor *shadowColor, CGFloat shadowRadius) {
        [weakSelf configureShadowWithColor:shadowColor
                              shadowRadius:shadowRadius];
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(UIColor *, CGFloat))setShadowWithColorOpactity {
    __weak typeof(self) weakSelf = self;
    return ^(UIColor *shadowColor, CGFloat shadowOpacity) {
        [weakSelf configureShadowWithColor:shadowColor
                             shadowOpacity:shadowOpacity];
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(UIColor *, CGSize, CGFloat, CGFloat))setShadowWithColorOffsetOpactityRadius {
    __weak typeof(self) weakSelf = self;
    return ^(UIColor *shadowColor, CGSize shadowOffset, CGFloat shadowOpacity, CGFloat shadowRadius) {
        [weakSelf configureShadowWithColor:shadowColor shadowOffset:shadowOffset shadowOpacity:shadowOpacity shadowRadius:shadowRadius];
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(UIColor *))setBorderWithColor {
    __weak typeof(self) weakSelf = self;
    return ^(UIColor *borderColor) {
        [weakSelf configureBroderWithBorderWidth:1 color:borderColor];
        return weakSelf;
    };
}

- (__kindof UIButton *(^)(UIColor *, CGFloat))setBorderWithColorWidth {
    __weak typeof(self) weakSelf = self;
    return ^(UIColor *borderColor, CGFloat borderWidth) {
        [weakSelf configureBroderWithBorderWidth:borderWidth color:borderColor];
        return weakSelf;
    };
}

//- (__kindof UIButton *(^)(XDLayoutBlock))setSDLayout {
//    __weak typeof(self) weakSelf = self;
//    return ^(XDLayoutBlock block) {
//        block(weakSelf.sd_layout);
//        return weakSelf;
//    };
//}
//
//- (__kindof UIButton *(^)(XDLayoutBlock))setReSDLayout {
//    __weak typeof(self) weakSelf = self;
//    return ^(XDLayoutBlock block) {
//        block(weakSelf.sd_resetLayout);
//        return weakSelf;
//    };
//}
//
//- (__kindof UIButton *(^)(XDLayoutBlock))setReNewSDLayout {
//    __weak typeof(self) weakSelf = self;
//    return ^(XDLayoutBlock block) {
//        block(weakSelf.sd_resetNewLayout);
//        return weakSelf;
//    };
//}

- (__kindof UIButton *(^)(BOOL))setHidden {
    __weak typeof(self) weakSelf = self;
    return ^(BOOL isHidden) {
        weakSelf.hidden = isHidden;
        return weakSelf;
    };
}

@end
