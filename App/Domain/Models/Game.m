//
//  Game.m
//  Matchmaker-ios
//
//  Created by Erik Hanson on 8/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Game.h"


@implementation Game

@synthesize data;

- (id)initWithData:(NSArray *)newData {
    self = [super init];
    
    if (self) {
        [newData retain];
        data = newData;
        currentItem = 0;
    }
    
    return self;
}

- (NSString *)url1 {
    return [[data objectAtIndex:currentItem] objectForKey:@"one"];
}

- (NSString *)url2 {
    return [[data objectAtIndex:currentItem] objectForKey:@"two"];
}

- (void)next {
    currentItem++;
}

- (BOOL)isOver {
    return (currentItem == [data count] - 1);
}

@end
