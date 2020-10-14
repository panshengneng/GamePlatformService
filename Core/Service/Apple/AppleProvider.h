//
//  AppleProvider.h
//  GamePlatformService
//
//  Created by Anonymous on 2020/10/14.
//

#import <Foundation/Foundation.h>
#import "StoreKit/StoreKit.h"

NS_ASSUME_NONNULL_BEGIN

typedef void (^AppleBuyProductsResponseBlock)(SKPaymentTransaction* transcation);

@interface AppleProvider : NSObject
/// 初始化支付
/// @param productIdentifiers 支付商品 ID
+ (void)InitWithProductIdentifiers:(NSSet *)productIdentifiers;

/// 购买商品
/// @param completion 完成
+ (void)BuyProductsWithCompletion:(int)index onCompletion:(AppleBuyProductsResponseBlock)completion;

/// 版本号
+ (NSString *)GetVersion;
@end

NS_ASSUME_NONNULL_END
