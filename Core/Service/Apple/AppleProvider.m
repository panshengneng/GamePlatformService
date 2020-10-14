//
//  AppleProvider.m
//  GamePlatformService
//
//  Created by Anonymous on 2020/10/14.
//

#import "AppleProvider.h"
#import "PayShare.h"

@implementation AppleProvider

+ (void)InitWithProductIdentifiers:(NSSet *)productIdentifiers {
    if(![PayShare sharedHelper].iap) {
        [PayShare sharedHelper].iap.production = NO;
        [PayShare sharedHelper].iap = [[PayHelper alloc] initWithProductIdentifiers:productIdentifiers];
    }
    
    NSLog(@"%@",[PayShare sharedHelper].iap.purchasedProducts);
}

/// 购买商品
/// @param completion 完成
+ (void)BuyProductsWithCompletion:(int)index onCompletion:(AppleBuyProductsResponseBlock)completion{
    NSLog(@"ipaPay");
    [[PayShare sharedHelper].iap requestProductsWithCompletion:^(SKProductsRequest* request,SKProductsResponse* response)
     {
         if(response > 0 ) {
             // TODO 添加越界判断
             SKProduct* product =[[PayShare sharedHelper].iap.products objectAtIndex:index];
            
             NSLog(@"Price: %@",[[PayShare sharedHelper].iap getLocalePrice:product]);
             NSLog(@"Title: %@",product.localizedTitle);
             [[PayShare sharedHelper].iap buyProduct:product onCompletion:^(SKPaymentTransaction *transcation) {
                 completion(transcation);
             }];
         }
     }];
}

+ (NSString *)GetVersion
{
    return @"1.0.0-apple-dev";
}
@end
