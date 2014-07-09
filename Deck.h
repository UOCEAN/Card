//
//  Deck.h
//  Card
//
//  Created by Chentou TONG on 9/7/14.
//  Copyright (c) 2014 UOCEAN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

// 1. this method has 2 arguments and returns nothins
// it's called "addCard:atTop:"
- (void)addCard:(Card *)card atTop:(BOOL)atTop;

// 3. arguments to methods are never optional
// but if we want an addCard: method without atTop:,
// we can define it separately.
- (void)addCard:(Card *)card;

// 2. this takes no arguments and returns a Card
// a pointer to an instance of a Card in the heap
- (Card *)drawRandomCard;

@end
