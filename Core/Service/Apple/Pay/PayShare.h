//
//  PayShare.h
//
//  Created by Anonymous on 2020/10/14.
//

#import <Foundation/Foundation.h>
#import "PayHelper.h"
@interface PayShare : NSObject
@property (nonatomic,strong) PayHelper *iap;

+ (PayShare *) sharedHelper;

+(id)toJSON:(NSString*)json;
@end
