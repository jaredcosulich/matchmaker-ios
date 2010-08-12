//
//  GameController.h
//  Matchmaker
//
//  Created by Erik Hanson on 8/11/10.
//  Copyright 2010 The Matching Game. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface GameController : UIViewController {
    UIButton *yes;
    UIButton *no;
}

@property (nonatomic,retain) IBOutlet UIButton *yes;
@property (nonatomic,retain) IBOutlet UIButton *no;

- (IBAction)votedYes;
- (IBAction)votedNo;

@end
