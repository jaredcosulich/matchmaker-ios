//
//  GameController.m
//  Matchmaker
//
//  Created by Erik Hanson on 8/11/10.
//  Copyright 2010 The Matching Game. All rights reserved.
//

#import "GameController.h"
#import "Seriously.h"

@implementation GameController

@synthesize yes;
@synthesize no;
@synthesize photo1;
@synthesize photo2;
@synthesize game;

- (IBAction)votedYes {
    if ([game isOver]) {
        NSLog(@"done!");
    } else {
        [game next];
        [self showPhotos];
    }
}

- (IBAction)votedNo {
    if ([game isOver]) {
        NSLog(@"done!");
    } else {
        [game next];
        [self showPhotos];
    }
}

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
        
    //NSString *url = @"http://localhost:4567/game/new";
    NSString *url = @"http://staging.thematchinggame.com/games/new?count=5";
    
    [Seriously get:url handler:^(id body, NSHTTPURLResponse *response, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        }
        else {
            game = [[Game alloc] initWithData:body];
            [self showPhotos];
        }
    }];
}

- (void)showPhotos {
    [photo1 load:[game url1]];
    [photo2 load:[game url2]];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.photo1 = nil;
    self.photo2 = nil;
    self.yes = nil;
    self.no = nil;
}


- (void)dealloc {
    [super dealloc];
    [game release];
}


@end
