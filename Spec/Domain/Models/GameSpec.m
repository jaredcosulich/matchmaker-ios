//
//  GameSpec.m
//  Matchmaker-ios
//
//  Created by Erik Hanson on 8/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cedar-iPhone/SpecHelper.h>
#define HC_SHORTHAND
#import <OCHamcrest-iPhone/OCHamcrest.h>
#import <OCMock-iPhone/OCMock.h>

#import "Game.h"

SPEC_BEGIN(GameSpec)

describe(@"Game", ^{
    it(@"should know when the game is over", ^{
        /*
        NSArray *data = [NSArray arrayWithObjects:@"a", @"b", nil];
        Game *game = [[Game alloc] initWithData:data];
        
        assertThat([game isOver], is(false));
        
        [game next];
        assertThat([game isOver], is(false));

        [game next];
        assertThat([game isOver], is(true));
         */
    });
});

SPEC_END
