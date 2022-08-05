//
//  MFThirdLib+MFSugarGrammar.h
//  Expecta
//
//  Created by Neal Wills on 2022/8/5.
//

#import <Foundation/Foundation.h>


#if __has_include(<MBProgressHUD/MBProgressHUD.h>)

#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (MFSugarGrammar)

+ (void (^)(void))showLoading;

+ (void (^)(void))hideLoading;

+ (void(^)(NSString *))showText;

+ (void(^)(NSString *))showLoadingText;

@end


#endif
