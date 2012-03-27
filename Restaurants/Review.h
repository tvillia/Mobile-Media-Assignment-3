//
//  Review.h
//  Restaurants
//
//  Created by doLai on 3/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Review : NSObject

{
    NSString* reviewerName;
    NSString* text;
    int score; //(1 to 5, how good the reviewer thought the restaurant was)
    int numberOfHelpfulRatings;
    int numberOfUnhelpfulRatings;
    
}

@property(readwrite, strong) NSString* reviewerName;
@property(readwrite, strong) NSString* text;
@property(readwrite) int score;
@property(readwrite) int numberOfHelpfulRatings;
@property(readwrite) int numberOfUnhelpfulRatings;

@end
// @property(readwrite, strong) NSString* address;
