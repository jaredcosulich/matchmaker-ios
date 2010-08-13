//
//  GameControllerSpec.m
//  Matchmaker-ios
//
//  Created by Erik Hanson on 8/12/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cedar-iPhone/SpecHelper.h>
#define HC_SHORTHAND
#import <OCHamcrest-iPhone/OCHamcrest.h>
#import <OCMock-iPhone/OCMock.h>

#import "GameController.h"

SPEC_BEGIN(GameControllerSpec)

describe(@"GameController", ^{
    __block GameController *controller;
    
    beforeEach(^{
    });

	afterEach(^{
    });

    it(@"should load the game when the view becomes active", ^{
        controller = [[GameController alloc] init];
        [controller loadView];
        //[controller viewDidLoad];
        
        //assertThat(1, equalTo(2));
    });
});

SPEC_END
