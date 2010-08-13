//
//  Lightspun.m
//  Matchmaker-ios
//
//  Created by Erik Hanson on 8/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Lightspun.h"

@implementation Lightspun

+ (NSString *)resize:(NSString *)url width:(int)width height:(int)height shape:(NSString *)shape background:(NSString *)background key:(NSString *)key {
    return [NSString stringWithFormat:@"http://img.lightspun.com/?src=%@&resize=%dx%d&shape=%@&background=%@&key=%@",
                                      [Lightspun escape:url], width, height, shape, background, key];
}

+ (NSString *)escape:(NSString *)url {
	CFStringRef escaped = CFURLCreateStringByAddingPercentEscapes(
                                                                  kCFAllocatorDefault,
                                                                  (CFStringRef)url,
                                                                  NULL,
                                                                  (CFStringRef)@":/?=,!$&'()*+;[]@#",
                                                                  CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding));
    
    return [(NSString *)escaped autorelease];
}
@end
