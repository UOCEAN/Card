//
//  Card.h
//  Card
//
//  Created by Chentou TONG on 8/7/14.
//  Copyright (c) 2014 UOCEAN. All rights reserved.
//

// for iOS 7
@import Foundation;
// backwards-compatible in
// #import <Foundation/Foundation.h>
//

@interface Card : NSObject

// iOS don't access instance variables directly
// instead, use @property which declares two methods: a seeter and a getter
//
// This particular @property is a pointer.
// a pointer to an object whose class is NSString
//
// All objects live in the heap, are pointed to
//
// in .h, it is public
//
@property (strong, nonatomic) NSString *contents;
// strong: keep the object that this property points to
// in memory until I set this property to nil
// (and it will stay in memory until everyone who has a strong
// pointer to it sets their property to nil too)"
//
// weak: if no one else has a strong pointer to this object,
// then you can throw it out of memory and set this property
// to nil (this can happen at any time)"
//
// nonatomic: access to this property is not thread-safe.
// I you do not, then the compiler will generate locking code
// that will complicate your code elsewhere.

// no strong or weak for primitive types
// not stored in the heap
//
// change the name of the getter for the code to read a little
// bit nicer.
@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

// declaration of a public method called match
// which takes one argument (a pointer to a Card) and
// returns an interger
//- (int)match:(Card *)card;

- (int)match:(NSArray *)otherCards;

@end
