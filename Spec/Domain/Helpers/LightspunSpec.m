//
//  LightspunSpec.m
//  Matchmaker-ios
//
//  Created by Erik Hanson on 8/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cedar-iPhone/SpecHelper.h>
#define HC_SHORTHAND
#import <OCHamcrest-iPhone/OCHamcrest.h>
#import <OCMock-iPhone/OCMock.h>

#import "Lightspun.h"

SPEC_BEGIN(LightspunSpec)

describe(@"Lightspun", ^{
    it(@"should build a url to resize an image", ^{
        assertThat(
                   [Lightspun resize:@"http://example.com/foo.jpg" width:10 height:20 shape:@"pad" background:@"face00" key:@"KEY"],
                   equalTo(@"http://img.lightspun.com/?src=http%3A%2F%2Fexample.com%2Ffoo.jpg&resize=10x20&shape=pad&background=face00&key=KEY"));
    });
});

SPEC_END
