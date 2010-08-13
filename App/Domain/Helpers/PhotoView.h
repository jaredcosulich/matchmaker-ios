//
//  PhotoView.h
//  Matchmaker-ios
//
//  Created by Erik Hanson on 8/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PhotoView : UIImageView {

}

- (void)load:(NSString *)url;
- (void)autoscale;

@end
