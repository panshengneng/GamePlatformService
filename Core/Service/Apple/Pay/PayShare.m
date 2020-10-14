//
//  PayShare.m
//
//  Created by Anonymous on 2020/10/14.
//

#import "PayShare.h"

#if ! __has_feature(objc_arc)
#error You need to either convert your project to ARC or add the -fobjc-arc compiler flag to PayShare.m.
#endif

@implementation PayShare
@synthesize iap= _iap;

+ (PayShare *) sharedHelper {
    static PayShare * _sharedHelper = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedHelper = [[PayShare alloc] init];
        _sharedHelper.iap = nil;
    });
    return _sharedHelper;
}

+(id)toJSON:(NSString *)json
{
    NSError* e = nil;
    id jsonObject = [NSJSONSerialization JSONObjectWithData: [json dataUsingEncoding:NSUTF8StringEncoding]
                                    options: NSJSONReadingMutableContainers
                                      error: &e];
    
    if(e==nil) {
        return jsonObject;
    }
    else {
        NSLog(@"%@",[e localizedDescription]);
        return nil;
    }
    
}

@end
