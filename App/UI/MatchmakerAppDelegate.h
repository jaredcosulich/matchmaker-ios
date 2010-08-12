//
//  MatchmakerAppDelegate.h
//  Matchmaker
//
//  Created by Erik Hanson on 8/11/10.
//  Copyright 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GameController;

@interface MatchmakerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    GameController *gameController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) GameController *gameController;
@end

