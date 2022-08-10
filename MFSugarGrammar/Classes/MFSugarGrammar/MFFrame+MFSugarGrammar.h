//
//  MFFrame+MFSugarGrammar.h
//  Expecta
//
//  Created by Neal Wills on 2022/8/5.
//

#import <Foundation/Foundation.h>

@interface MFSize : NSObject

/**
 * Size构建
 * MFSize.zero()
 * @return 为0的size
 */
+ (CGSize(^)(void))zero;

/**
 * size构建
 * MFSize.init(50, 100);
 * @return 传入 width, height 构建的size
 */
+ (CGSize(^)(CGFloat width, CGFloat height))initWithWidthHeight;

@end

@interface MFPoint : NSObject

/**
 * point 构建
 * MFPoint.zero()
 * @return 为0的point
 */
+ (CGPoint(^)(void))zero;

/**
 * point构建
 * MFPoint.init(x, y)
 * @return 传入 x，y 构建的point
 */
+ (CGPoint(^)(CGFloat x, CGFloat y))initWithXY;

@end

@interface MFInset : NSObject

/**
 * inset构建
 * MFInset.zer0()
 * @return 为0的inset
 */
+ (UIEdgeInsets(^)(void))zero;

/**
 * inset构建
 * MFInset.init(top, left, bottom, right)
 * @return 传入 top, left, bottom, right 构建的 inset
 */
+ (UIEdgeInsets(^)(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right))initWithTopLeftBottomRight;

@end

@interface MFRect : NSObject

/**
 * rect构建
 * MFRect.zero()
 * @return 为0的rect
 */
+ (CGRect(^)(void))zero;

/**
 * rect构建
 * MFRect.init(x, y, width, height)
 * @return 使用 x, y, width, height 构建的rect
 */
+ (CGRect(^)(CGFloat x, CGFloat y, CGFloat width, CGFloat height))initWithXYWidthHeight;

/**
 * rect构建
 * MFRect.init(centerX, bottom, width, height)
 * @return 使用 centerX, bottom, width, height 构建的rect
 */
+ (CGRect(^)(CGFloat centerX, CGFloat bottom, CGFloat width, CGFloat height))initWithCenterXBottomWidthHeight;

/**
 * rect构建
 * MFRect.init(centerX, top, width, height)
 * @return 使用 centerX, top, width, height 构建的rect
 */
+ (CGRect(^)(CGFloat centerX, CGFloat top, CGFloat width, CGFloat height))initWithCenterXTopWidthHeight;

/**
 * rect构建
 * MFRect.init(leading, centerY, width, height)
 * @return 使用 leading, centerY, width, height 构建的rect
 */
+ (CGRect(^)(CGFloat leading, CGFloat centerY, CGFloat width, CGFloat height))initWithLeadingCenterYWidthHeight;

/**
 * rect构建
 * MFRect.init(trailing, centerY, width, height)
 * @return 使用 trailing, centerY, width, height 构建的rect
 */
+ (CGRect(^)(CGFloat trailing, CGFloat centerY, CGFloat width, CGFloat height))initWithTrailingCenterYWidthHeight;

/**
 * rect构建
 * MFRect.init(centerPoint, size)
 * @return 使用 centerPoint, size 构建的rect
 */
+ (CGRect(^)(CGPoint centerPoint, CGSize size))initWithCenterSize;

/**
 * rect构建
 * MFRect.init(startPoint, size)
 * @return 使用 startPoint, size 构建的rect
 */
+ (CGRect(^)(CGPoint startPoint, CGSize size))initWithStartSize;

/**
 * rect构建
 * MFRect.init(endPoint, size)
 * @return 使用 endPoint, size 构建的rect
 */
+ (CGRect(^)(CGPoint endPoint, CGSize size))initWithEndSize;

/**
 * rect构建
 * MFRect.initWithRectInset(rect, inset)
 * @return 使用 rect, inset 构建的rect
 */
+ (CGRect(^)(CGRect rect, UIEdgeInsets inset))initWithRectInset;

@end


