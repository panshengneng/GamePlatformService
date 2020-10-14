//
//  NSString+Base64.h
//  Newsstand
//
//  Created by Anonymous on 2020/10/14.
//

#import <Foundation/Foundation.h>

@interface NSString (Base64)

+ (NSString *) base64StringFromData:(NSData *)data length:(long)length;

@end
