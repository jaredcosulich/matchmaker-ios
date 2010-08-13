//
//  Lightspun.h
//  Matchmaker-ios
//
//  Created by Erik Hanson on 8/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Lightspun : NSObject {

}

+ (UIImage *)imageFromUrl:(NSString *)url width:(int)width height:(int)height shape:(NSString *)shape background:(NSString *)background key:(NSString *)key;
+ (NSString *)escape:(NSString *)url;

@end
