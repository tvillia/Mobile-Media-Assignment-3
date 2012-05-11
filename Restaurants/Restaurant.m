//
//  Restaurant.m
//  Restaurants
//

#import "Restaurant.h"
#import "Review.h"

@implementation Restaurant
@synthesize address, name, cuisineType, yearOpened, reviews;


-(int)age
{
    return 2012 - yearOpened;
}

-(Review*) mostHelpfulRatings
{
    Review* mostHelpfulRatings = nil;
   
    for (Review* review in reviews)
    {
        if (review.numberOfHelpfulRatings > 4)
        {
            if (mostHelpfulRatings == nil) {
                mostHelpfulRatings = review;
            }
       
            if(review.percentage > mostHelpfulRatings.percentage)
            {
                mostHelpfulRatings = review;
            }
        }
        
    }
    
    NSLog (@"Review Text: %@", mostHelpfulRatings.text);
    return mostHelpfulRatings;

}

-(float) averageCustomerReview
{
    int sum = 0;
    for (Review* storage in reviews)
    {
        sum+= [storage score];
    }
    
    return (float) sum/[reviews count];
}



@end
