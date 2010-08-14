//
//  Game.h
//  Matchmaker-ios
//
//  Created by Erik Hanson on 8/13/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Game : NSObject {
    NSArray *data;
    int currentItem;
}

@property (nonatomic, assign) NSArray *data;

- (id)initWithData:(NSArray *)newData;
- (NSString *)url1;
- (NSString *)url2;
- (void)next;
- (BOOL)isOver;

@end
