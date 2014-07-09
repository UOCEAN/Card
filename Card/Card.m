//
//  Card.m
//  Card
//
//  Created by Chentou TONG on 8/7/14.
//  Copyright (c) 2014 UOCEAN. All rights reserved.
//

#import "Card.h"

@interface Card()
// Private declarations can go here

@end


@implementation Card

/*
 This @synthesize is the line of code that actually creates the
 backing instance variable that is set and gotten.
 by default, backing variable is the same as the property's name
 but with an underbar in front.
 
 compiler generates automatically for you (setter and getter)
 
@synthesize contents = _contents;
 
- (NSString *)contents
{
    return _contents;
}

- (void)setContents:(NSString *)contents
{
    _contents = contents;
}
*/


- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
// isEqualToString: is an NSString method
// which takes another NSString as an argument and
// returns a BOOL if 2 strings are the same
//
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}


@end
