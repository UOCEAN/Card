//
//  PlayingCard.h
//  Card
//
//  Created by Chentou TONG on 9/7/14.
//  Copyright (c) 2014 UOCEAN. All rights reserved.
//


// 1. to make a subclass of one of our own classes.
// a subclass of Card specific to a playing card (e.g. A Q)
//
// 2. import our superclass
#import "Card.h"

@interface PlayingCard : Card

// 3. a playingCard has some properties that a
// vanilla Card doesn't have
//
// 4. represent the suit as an NSString that simply
// contains a single character corresponding to the suit
// ie one of these characters: ♣♡❤︎
@property (strong, nonatomic) NSString *suit;

// 5. represent the rank as an integer from 0 to 13 (King)
// NSUInteger unsigned integer
// int is 32 bits, NSInteger might be 64bits.
@property (nonatomic) NSUInteger rank;


// 11. the validSuits class method might be useful to users
// of our PlayingCard clas, so let's make it public.
+ (NSArray *)validSuits;

+ (NSUInteger)maxRank;

@end
