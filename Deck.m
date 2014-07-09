//
//  Deck.m
//  Card
//
//  Created by Chentou TONG on 9/7/14.
//  Copyright (c) 2014 UOCEAN. All rights reserved.
//

#import "Deck.h"

@interface Deck()
// 5. A deck of cards obvioursly needs some storage to
// keep the cards in. We need an @property for that.
// But we don't want it to be public
//
// 6. So we put the @property declaration we need here
// in our @implentation.
//
// 7. declaring a @property makes space in the instance for
// the pointer itself, but does not allocate space in the
// heap for the object to point to.
@property (strong, nonatomic) NSMutableArray *cards;

@end

@implementation Deck

- (NSMutableArray *)cards
{
// 8. the place to put this needed heap allocatin is
// in the getter for the cards @property
//
// This is called "lazy instantiation"
    if (!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop{
    
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
    
}

// 4. and then simply implement it in terms
// of the other method
- (void)addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}

/* 9. drawRandomCard simply grabs a card from
 a random spot in our self.cards array.
 */
- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    
    // 13. calling objectAtIndexedSubscript: with an argument of
    // zero on an empty array will crash
    if ([self.cards count]) {
        // 10. arc4random() returns a random integer, modulo
        unsigned index = arc4random() % [self.cards count];
    
        // 11. equivalent of sending the message objectAtIndexedSubscript:
        // to the array
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}

@end
