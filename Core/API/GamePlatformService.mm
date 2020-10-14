//
//  GamePlatformService.mm
//  GamePlatformService
//
//  Created by Anonymous on 2020/10/14.
//

#import "GamePlatformService.h"
#import "AppleProvider.h"
#import "GoogleProvider.h"
#import "FirebaseProvider.h"
#import "FacebookProvider.h"

@implementation GamePlatformService
///  初始化服务
/// @param google 配置
/// @param fb 配置
/// @param products apple内购商品 ID
+ (void) InitService:(PlatformConfig*)google fb:(PlatformConfig*)fb products:(NSSet *)products{
    [FirebaseProvider InitProvider];
    [AppleProvider InitWithProductIdentifiers:products];
}

/// 苹果登录
+ (void) LoginApple {
    // TODO 接入 Firebase
    
}

/// 脸书登录
+ (void)LoginFacebook {
    // TODO 接入 Firebase
}

/// 购买商品
/// @param completion 完成
+ (void)BuyProductsWithCompletion:(int)index onCompletion:(BuyProductsResponseBlock)completion{
    [AppleProvider BuyProductsWithCompletion:index onCompletion:^(SKPaymentTransaction * _Nonnull transcation) {
        completion(transcation);
    }];
}

/// 版本号
+ (NSString *)GetVersion
{
    NSLog(@"apple version: %@", [AppleProvider GetVersion]);
    NSLog(@"google version: %@", [GoogleProvider GetVersion]);
    NSLog(@"firebase version: %@", [FirebaseProvider GetVersion]);
    NSLog(@"facebook version: %@", [FacebookProvider GetVersion]);
    return @"1.0.0-dev";
}
@end
