//
//  GameController.h
//  Matchmaker
//
//  Created by Erik Hanson on 8/11/10.
//  Copyright 2010 The Matching Game. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhotoView.h"

@interface GameController : UIViewController {
    UIButton *yes;
    UIButton *no;
    PhotoView *photo1;
    PhotoView *photo2;
    NSArray *data;
    int currentItem;
}

@property (nonatomic,retain) IBOutlet UIButton *yes;
@property (nonatomic,retain) IBOutlet UIButton *no;
@property (nonatomic,retain) IBOutlet PhotoView *photo1;
@property (nonatomic,retain) IBOutlet PhotoView *photo2;
@property (nonatomic, assign) NSArray *data;

- (IBAction)votedYes;
- (IBAction)votedNo;
- (void)showNextPhoto;

@end
