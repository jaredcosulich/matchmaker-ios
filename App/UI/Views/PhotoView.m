//
//  PhotoView.m
//  Matchmaker-ios
//
//  Created by Erik Hanson on 8/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PhotoView.h"
#import "Seriously.h"
#import "Lightspun.h"

@implementation PhotoView


- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        // Initialization code
    }
    return self;
}

- (void)load:(NSString *)url {
    [self autoscale];
    
    int width = self.bounds.size.width * self.contentScaleFactor;
    int height = self.bounds.size.height * self.contentScaleFactor;
    
    [self setImage:[Lightspun imageFromUrl:url 
                                     width:width 
                                    height:height 
                                     shape:@"pad" 
                                background:@"ffffff"
                                       key:@"89593a47-3df0-41b1-b1b8-a4c3f1b3d58d"]];    
}

- (void)autoscale {
    UIScreen *screen = [UIScreen mainScreen];
    if ([screen respondsToSelector:@selector(scale)] &&
        [self respondsToSelector:@selector(setContentScaleFactor:)]) {
        [self setContentScaleFactor:[screen scale]];
    }
}

- (void)dealloc {
    [super dealloc];
}


@end
