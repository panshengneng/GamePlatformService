//
//  GamePlatformService.h
//  GamePlatformService
//
//  Created by Anonymous on 2020/10/14.
//

#import <Foundation/Foundation.h>
#import "StoreKit/StoreKit.h"

// 平台配置
@interface PlatformConfig : NSObject
@property (nonatomic, strong, readwrite) NSString *PlatformName;
@property (nonatomic, strong, readwrite) NSString *AppKey;
@property (nonatomic, strong, readwrite) NSString *AppSecret;
@end

// 购买商品 Block
typedef void (^BuyProductsResponseBlock)(SKPaymentTransaction* transcation);

// 游戏平台服务
@interface GamePlatformService : NSObject
///  初始化服务
/// @param google 配置
/// @param fb 配置
/// @param products apple内购商品 ID
+ (void) InitService:(PlatformConfig*)google fb:(PlatformConfig*)fb products:(NSSet *)products;

/// 苹果登录
+ (void) LoginApple;

/// 脸书登录
+ (void)LoginFacebook;

/// 购买商品
/// @param completion 完成
+ (void)BuyProductsWithCompletion:(int)index onCompletion:(BuyProductsResponseBlock)completion;

/// 显示广告
+ (void)ShowAd;

/// 发送邮件联系我们
/// @param content 内容
+ (void)contactCSWinthMail:(NSDictionary*)content;

/// 启动平台聊天联系我们
+ (void)contactCSWinthPlatformApp;

/// 版本
+ (NSString *)GetVersion;
@end
