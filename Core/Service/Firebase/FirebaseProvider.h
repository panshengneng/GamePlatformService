//
//  FirebaseService.h
//  GamePlatformService
//
//  Created by Anonymous on 2020/10/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FirebaseProvider : NSObject

+ (void)InitProvider;

/**
 获取版本号
 @return 版本号
 */
+ (NSString *)GetVersion;
@end

NS_ASSUME_NONNULL_END
