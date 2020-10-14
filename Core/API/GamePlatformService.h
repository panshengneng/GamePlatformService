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
    
/// 版本
+ (NSString *)GetVersion;
@end
