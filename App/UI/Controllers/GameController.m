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


- (IBAction)votedYes {
    NSLog(@"yessssssssssssssss!");
}

- (IBAction)votedNo {
    NSLog(@"nooooooooooooo!");
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

    NSString *url = @"http://localhost:4567/game/new";
    [Seriously get:url handler:^(id body, NSHTTPURLResponse *response, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        }
        else {
            NSDictionary *first = [body objectAtIndex:0];
            [self loadPhoto:photo1 fromUrl:[first objectForKey:@"one"]];            
            [self loadPhoto:photo2 fromUrl:[first objectForKey:@"two"]];            
        }
    }];
}

- (void)loadPhoto:(UIImageView *)photo fromUrl:(NSString *)url {
    NSData *imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: url]];
    [photo setImage:[[UIImage alloc] initWithData: imageData]];
    [imageData release];
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
}


- (void)dealloc {
    [super dealloc];
}


@end
