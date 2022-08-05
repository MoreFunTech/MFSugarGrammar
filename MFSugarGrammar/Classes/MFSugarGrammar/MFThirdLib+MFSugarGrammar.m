//
//  MFThirdLib+MFSugarGrammar.m
//  Expecta
//
//  Created by Administer on 2022/8/5.
//

#import "MFThirdLib+MFSugarGrammar.h"


#if __has_include(<MBProgressHUD/MBProgressHUD.h>)

#import <MBProgressHUD/MBProgressHUD.h>

@implementation MBProgressHUD (MFSugarGrammar)

+ (void (^)(void))showLoading {
    return ^{
        [MBProgressHUD showIndicatorInView:kAppWindow];
        return;
    };
}

+ (void (^)(void))hideLoading {
    return ^{
        [kAppWindow.subviews enumerateObjectsUsingBlock:^(__kindof UIView *obj, NSUInteger idx, BOOL *stop) {
            if ([obj isKindOfClass:[MBProgressHUD class]]) {
                [obj removeFromSuperview];
            }
        }];
        return;
    };
}

+ (void (^)(NSString *))showText {
    return ^(NSString *msg) {
        [MBProgressHUD showMessageText:msg];
        return;
    };
}

+ (void (^)(NSString *))showLoadingText {
    return ^(NSString *msg) {
        [MBProgressHUD showIndicatorMessage:msg];
        return;
    };
}


@end


#endif
