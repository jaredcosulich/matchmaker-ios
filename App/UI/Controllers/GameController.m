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
@synthesize data;

- (IBAction)votedYes {
    if (currentItem == [data count] - 1) {
        NSLog(@"done!");
    } else {
        [self showNextPhoto];
    }
}

- (IBAction)votedNo {
    if (currentItem == [data count] - 1) {
        NSLog(@"done!");
    } else {
        [self showNextPhoto];
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
        
    NSString *url = @"http://localhost:4567/game/new";
    
    [Seriously get:url handler:^(id body, NSHTTPURLResponse *response, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        }
        else {
            [body retain];
            data = body;
            currentItem = -1;
            [self showNextPhoto];
        }
    }];
}

- (void)showNextPhoto {
    currentItem++;
    
    NSDictionary *item = [data objectAtIndex:currentItem];
    [self loadPhoto:photo1 fromUrl:[item objectForKey:@"one"]];
    [self loadPhoto:photo2 fromUrl:[item objectForKey:@"two"]];
}

- (void)loadPhoto:(UIImageView *)photo fromUrl:(NSString *)url {
    NSString *resizedUrl = [NSString stringWithFormat:@"http://img.lightspun.com/?src=%@&resize=320x200&shape=pad&background=ffffff&key=89593a47-3df0-41b1-b1b8-a4c3f1b3d58d", [Seriously escapeQueryParam: url]];
    NSLog(@"resizedUrl: %@", resizedUrl);
    NSData *imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: resizedUrl]];
    [photo setImage:[UIImage imageWithData: imageData]];
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
    self.photo1 = nil;
    self.photo2 = nil;
    self.yes = nil;
    self.no = nil;
}


- (void)dealloc {
    [super dealloc];
    [data release];
}


@end
