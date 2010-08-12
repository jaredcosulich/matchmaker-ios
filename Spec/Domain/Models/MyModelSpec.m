//
//  MyModelSpec.m
//  Matchmaker-ios
//
//  Created by Erik Hanson on 8/11/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cedar/SpecHelper.h>
#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>
#import <OCMock/OCMock.h>

#import "MyModel.h"

SPEC_BEGIN(ExampleSpec)

describe(@"MyModel", ^{
    __block MyModel *model;

    beforeEach(^{
        model = [[MyModel alloc] init];
    });

    describe(@"name", ^{
        it(@"should be 'foo'", ^{
            assertThat([model name], equalTo(@"foo"));
        });
    });
});

SPEC_END
