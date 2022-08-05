//
//  MFFrame+MFSugarGrammar.m
//  Expecta
//
//  Created by Neal Wills on 2022/8/5.
//

#import "MFFrame+MFSugarGrammar.h"


@implementation MFSize

+ (CGSize(^)(void))zero {
    return ^(void) {
        return CGSizeZero;
    };
}

+ (CGSize(^)(CGFloat width, CGFloat height))initWithWidthHeight {
    return ^(CGFloat width, CGFloat height) {
        return CGSizeMake(width, height);
    };
}

@end

@implementation MFPoint
+ (CGPoint(^)(void))zero {
    return ^CGPoint {
        return CGPointZero;
    };
}

+ (CGPoint(^)(CGFloat x, CGFloat y))initWithXY {
    return ^CGPoint(CGFloat x, CGFloat y) {
        return CGPointMake(x, y);
    };
}

@end

@implementation MFInset
+ (UIEdgeInsets(^)(void))zero {
    return ^UIEdgeInsets {
        return UIEdgeInsetsZero;
    };
}

+ (UIEdgeInsets(^)(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right))initWithTopLeftBottomRight {
    return ^UIEdgeInsets(CGFloat top, CGFloat leading, CGFloat bottom, CGFloat trailing) {
        return UIEdgeInsetsMake(top, leading, bottom, trailing);
    };
}

@end

@implementation MFRect

+ (CGRect(^)(void))zero {
    return ^CGRect {
        return CGRectZero;
    };
}

+ (CGRect(^)(CGFloat x, CGFloat y, CGFloat width, CGFloat height))initXYWidthHeight {
    return ^CGRect(CGFloat x, CGFloat y, CGFloat width, CGFloat height) {
        return CGRectMake(x, y, width, height);
    };
}

+ (CGRect(^)(CGFloat centerX, CGFloat bottom, CGFloat width, CGFloat height))initWithCenterXBottomWidthHeight {
    return ^CGRect(CGFloat centerX, CGFloat bottom, CGFloat width, CGFloat height) {
        return CGRectMake(centerX - width / 2.0, bottom - height, width, height);
    };
}

+ (CGRect(^)(CGFloat centerX, CGFloat top, CGFloat width, CGFloat height))initWithCenterXTopWidthHeight {
    return ^CGRect(CGFloat centerX, CGFloat top, CGFloat width, CGFloat height) {
        return CGRectMake(centerX - width / 2.0, top, width, height);
    };
}

+ (CGRect(^)(CGFloat leading, CGFloat centerY, CGFloat width, CGFloat height))initWithLeadingCenterYWidthHeight {
    return ^CGRect(CGFloat leading, CGFloat centerY, CGFloat width, CGFloat height) {
        return CGRectMake(leading, centerY - height / 2.0, width, height);
    };
}

+ (CGRect(^)(CGFloat trailing, CGFloat centerY, CGFloat width, CGFloat height))initWithTrailingCenterYWidthHeight {
    return ^CGRect(CGFloat trailing, CGFloat centerY, CGFloat width, CGFloat height) {
        return CGRectMake(trailing - width, centerY - height / 2.0, width, height);
    };
}

+ (CGRect(^)(CGPoint centerPoint, CGSize size))initWithCenterSize {
    return ^CGRect(CGPoint centerPoint, CGSize size) {
        return CGRectMake(centerPoint.x - size.width / 2.0, centerPoint.y - size.height / 2.0, size.width, size.height);
    };
}

+ (CGRect(^)(CGPoint startPoint, CGSize size))initWithStartSize {
    return ^CGRect(CGPoint startPoint, CGSize size) {
        return CGRectMake(startPoint.x, startPoint.y, size.width, size.height);
    };
}

+ (CGRect(^)(CGPoint endPoint, CGSize size))initWithEndSize {
    return ^CGRect(CGPoint endPoint, CGSize size) {
        return CGRectMake(endPoint.x - size.width, endPoint.y - size.height, size.width, size.height);
    };
}

+ (CGRect(^)(CGRect rect, UIEdgeInsets inset))initWithRectInset {
    return ^CGRect(CGRect rect, UIEdgeInsets inset) {
        CGFloat x = rect.origin.x + inset.left;
        CGFloat y = rect.origin.y + inset.top;
        CGFloat width = rect.size.width - inset.left - inset.right;
        CGFloat height = rect.size.height - inset.top - inset.bottom;
        return CGRectMake(x, y, width, height);
    };
}


@end


