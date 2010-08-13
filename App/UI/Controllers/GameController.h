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
    UIImageView *photo1;
    UIImageView *photo2;
    NSArray *data;
    int currentItem;
}

@property (nonatomic,retain) IBOutlet UIButton *yes;
@property (nonatomic,retain) IBOutlet UIButton *no;
@property (nonatomic,retain) IBOutlet UIImageView *photo1;
@property (nonatomic,retain) IBOutlet UIImageView *photo2;
@property (nonatomic, assign) NSArray *data;

- (IBAction)votedYes;
- (IBAction)votedNo;
- (void)loadPhoto:(UIImageView *)photo fromUrl:(NSString *)url;
- (void)showNextPhoto;

@end
