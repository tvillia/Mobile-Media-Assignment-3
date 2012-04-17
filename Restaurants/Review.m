//
//  Review.m
//  Restaurants
//
//  Created by doLai on 3/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Review.h"

@implementation Review
@synthesize ReviewerName, text, score, numberOfHelpfulRatings, numberOfUnhelpfulRatings; 

-(int) total
{
    return numberOfHelpfulRatings + numberOfUnhelpfulRatings;
}

-(float) percentage
{
    return (float)numberOfHelpfulRatings / (numberOfUnhelpfulRatings + numberOfHelpfulRatings);
}

@end
