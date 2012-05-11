//
//  DetailViewController.m
//  Restaurants
//
//

#import "DetailViewController.h"
#import "Review.h"

@implementation DetailViewController

@synthesize addressLabel;
@synthesize navigationHeader;
@synthesize cuisineLabel;
@synthesize ageLabel;
@synthesize helpfulReviewPercentageLabel;
@synthesize helpfulReviewLabel;
@synthesize restaurant;

@synthesize star1;
@synthesize star2;
@synthesize star3;
@synthesize star4;
@synthesize star5;

#pragma mark - View lifecycle

- (void)viewDidLoad


{
    [super viewDidLoad];
    restaurant = [[Restaurant alloc] init];
    
    restaurant.name = @"Pio Pio";
    restaurant.address = @"746 First Avenue\nNew York, NY 10128";
    restaurant.cuisineType = @"Peruvian";
    restaurant.yearOpened = 1995;
    
    
    Review* findMostHelpfulRatings=[restaurant mostHelpfulRatings];

    Review* review1 = [[Review alloc] init];
    review1.text = @"What fab-u-lass chicken! We could eat it all day if we didn't have to stop to drink sangria!";
    //    review1.reviewer = @"The Addams";
    review1.score = 5;
    review1.numberOfHelpfulRatings = 19;
    review1.numberOfUnhelpfulRatings = 8;
    
    Review* review2 = [[Review alloc] init];
    review2.text = @"I DONE POSTED ON DA INTARWEBS!";
    //    review2.reviewer = @"Anonymous";
    review2.score = 1;
    review2.numberOfHelpfulRatings = 0;
    review2.numberOfUnhelpfulRatings = 45;
    
    Review* review3 = [[Review alloc] init];
    review3.text = @"Some of the best chicken I've ever eaten. A helpful tip: get some green (Aji) sauce to go, they sell it by the pint!";
    review3.reviewerName = @"Jim Carr";
    review3.score = 5;
    review3.numberOfHelpfulRatings = 28;
    review3.numberOfUnhelpfulRatings = 2;
    
    Review* review4 = [[Review alloc] init];
    review4.text = @"While the food is amazing, they often simply don't pick up the phone when ordering out!";
    //  review4.reviewer = @"Paul";
    review4.score = 4;
    review4.numberOfHelpfulRatings = 14;
    review4.numberOfUnhelpfulRatings = 5;
    
    Review* review5 = [[Review alloc] init];
    review5.text = @"The food was so awful! I think they cook everything in a trashcan!";
    //  review4.reviewer = @"Greg";
    review5.score = 3;
    review5.numberOfHelpfulRatings = 20;
    review5.numberOfUnhelpfulRatings = 3;

    
    
    
    NSArray* array = [[NSArray alloc] initWithObjects:review1, review2, review3, review4, review5, nil];
    NSArray* reviews = [restaurant reviews];
    
    
    addressLabel.text = [restaurant address];
    navigationHeader.title = [restaurant name];
    cuisineLabel.text = [restaurant cuisineType];
    ageLabel.text = [NSString stringWithFormat:@"Est. %i (%i years ago)", restaurant.yearOpened, [restaurant age]];
   
    Review* mostHelpful=[restaurant mostHelpfulRatings];
    
    helpfulReviewLabel.text = [mostHelpful text];
    if (helpfulReviewLabel.text == nil) {
        helpfulReviewLabel.text = @"Not enough helpful reviews yet.";
    }

    helpfulReviewPercentageLabel.text = [NSString stringWithFormat: @"%i helpful reviews out of %i", review3.numberOfHelpfulRatings, [review3 total]];
    
    if (helpfulReviewPercentageLabel.text == nil) {
        helpfulReviewPercentageLabel.text = @" ";
    }
    
    if (([restaurant averageCustomerReview] > 0.1) && ([restaurant averageCustomerReview] < 1.45)) {  
        star1.image = [UIImage imageNamed:@"Star_ON.png"];
    }  
    if (([restaurant averageCustomerReview] > 1.5) && ([restaurant averageCustomerReview] < 2.45)) {  
        (star2.image = [UIImage imageNamed:@"Star_ON.png"]) && (star1.image = [UIImage imageNamed:@"Star_ON.png"]);
    }  
    if (([restaurant averageCustomerReview] > 2.5) && ([restaurant averageCustomerReview] < 3.45)) {  
        (star2.image = [UIImage imageNamed:@"Star_ON.png"]) && (star1.image = [UIImage imageNamed:@"Star_ON.png"]) && (star3.image = [UIImage imageNamed:@"Star_ON.png"]);
    } 
    if (([restaurant averageCustomerReview] > 3.5) && ([restaurant averageCustomerReview] < 4.45)) {
        (star2.image = [UIImage imageNamed:@"Star_ON.png"]) && (star1.image = [UIImage imageNamed:@"Star_ON.png"]) && (star3.image = [UIImage imageNamed:@"Star_ON.png"])&&
        (star4.image = [UIImage imageNamed:@"Star_ON.png"]);
    }
    if (([restaurant averageCustomerReview] > 4.5) && ([restaurant averageCustomerReview] < 4.45)) { 
        (star2.image = [UIImage imageNamed:@"Star_ON.png"]) && (star1.image = [UIImage imageNamed:@"Star_ON.png"]) && (star3.image = [UIImage imageNamed:@"Star_ON.png"]) &&
        (star4.image = [UIImage imageNamed:@"Star_ON.png"])&&
        (star5.image = [UIImage imageNamed:@"Star_ON.png"]);
    } 
    
    
}



- (void)viewDidUnload
{
    [self setAddressLabel:nil];
    [self setNavigationHeader:nil];
    [self setCuisineLabel:nil];
    [self setAgeLabel:nil];
    [self setHelpfulReviewPercentageLabel:nil];
    [self setHelpfulReviewLabel:nil];
    [self setStar1:nil];
    [self setStar2:nil];
    [self setStar3:nil];
    [self setStar4:nil];
    [self setStar5:nil];
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


@end