//
//  PlayingCard.m
//  Card
//
//  Created by Chentou TONG on 9/7/14.
//  Copyright (c) 2014 UOCEAN. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

// 6. users of our PlayingCard class might well simply
// access suit and rank properties directly.
// But we can also support our superclass's contents property
// by overriding the getter to return a
// suitable NSString
- (NSString *)contents
{
    /*
    NSArray *rankStrings = @[@"?",@"A", @"2", @"3",@"4", @"5", @"6",
                             @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
    */
    
    NSArray *rankStrings = [PlayingCard rankStrings];
    
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
    
    //return [NSString stringWithFormat:@"%lu%@", self.rank, self.suit];
}

// if you implement BOTH the setter and the getter for a property
// then you have to create the instance variable for the property yourself.
@synthesize suit = _suit;

// 9. instance method: methods sent to instances of a class
// class method: method sent to the class itself
// like alloc or stringWithFormt:
// class methods start with +
// instance methods start with -
+ (NSArray *)validSuits
{
    // 10. class utility method which returns an NSArray of the NSStrings
    // which are valid suits
    return @[@"♥︎", @"♦︎", @"♠︎", @"♣︎"];
}

// 8. override the setter for suit to have it check
// to be sure no one tries to set a suit to something invalid
- (void)setSuit:(NSString *)suit
{
    /* 8
    if ([@[@"♥︎", @"♦︎", @"♠︎", @"♣︎"] containsObject:suit]) {
        _suit = suit;
    }
     */
    
    // 10 invoke our new class method here
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}


// 7. override the getter for suit to make a suit of nil return ?
- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

// 12. let's move our other array into a class method too
+ (NSArray *)rankStrings
{
    return  @[@"?",@"A", @"2", @"3",@"4", @"5", @"6",
              @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];

}


+ (NSUInteger)maxRank {
    return [[self rankStrings] count]-1;
}

- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
