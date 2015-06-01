//
//  ViewController.m
//  SuperDuperBeerApp
//
//  Created by Anand Kumar on 5/8/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "ViewController.h"
#import "BeerClass.h"
#import "DetailViewController.h"
#import "AddBeerViewController.h"

@interface ViewController ()


@property (nonatomic) NSUInteger index;



@end

@implementation ViewController

@synthesize index;      // for the counter to move between the images
@synthesize imageView;   //button
@synthesize labelTitle;   //label of the beer name in the app




#define KEY_FOR_BEER_NAME @"BeerName"
#define KEY_FOR_ORIGIN @"BeerOrigin"
#define KEY_FOR_ALCOLEVEL @"AlcoLevel"
#define KEY_FOR_BEERLOGO @"BeerLogo"
#define KEY_FOR_BEERBOTTLE @"BeerImage"
#define KEY_FOR_COUNTRYFLAG @"CountryFlag"


- (void)viewDidLoad {
    [super viewDidLoad];

    index = 0;
    
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSArray *arrayOfBeers= [NSMutableArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource: @"BeerDB" ofType: @"plist"]]; //OF NSDICTIONARY  taking all the data from the array and convert to data dictionary which is in the plist file
    
   // converting something from array to NSDictionary...using pointer
   
    
    self.beerData = [NSMutableArray array];    //Empty mutablearray created  //convert the array of dictionary to array of classes
    
    for (NSDictionary *beerDictionary in arrayOfBeers) {
        
        NSString *beerName = beerDictionary[KEY_FOR_BEER_NAME];   //using the constant name which is declared using #define which is above
        NSString *beerOrigin = beerDictionary[KEY_FOR_ORIGIN];
        NSString *alcoLevel = beerDictionary[KEY_FOR_ALCOLEVEL];
        NSString *beerLogo = beerDictionary[KEY_FOR_BEERLOGO];
        NSString *beerBottle = beerDictionary[KEY_FOR_BEERBOTTLE];
        NSString *countryFlag = beerDictionary[KEY_FOR_COUNTRYFLAG];
    
        
        
        BeerClass *realBeer = [[BeerClass alloc] initWithName:beerName beerOrigin:beerOrigin beerAlcoLevel:alcoLevel beerLogo:beerLogo beerBottle:beerBottle countryFlag:countryFlag];
                               
                               //alloc and init the array of classes

                               //BeerClass is a class name
                               //*realBeer is pointer for BeerClass--alloc init
                               
                               
        [self.beerData addObject: realBeer];    //add the class object into the NSMutable array . populate it
                                                                 //beerData is NSMUtableArray
                                                                 //you add the BeerClass with pointer realBeer to the NSMutable Array name beerData
        
        
        
     

    }
    
    [self showImage];
    
                               //NSString *countryFlag = self[KEY_FOR_COUNTRYFLAG];  you only use Self if a property is declared or its in a method , you dont use this in viewdidload

                               
                               //conver the array of classes to individual objects
                               // once the beer classes has been alloc and init , u add the classes to the NSMutable Dictionary
                               
                            //       //unfinished code
        
  
   
    
}

- (IBAction)previousBUttonPressed:(id)sender {   // this code is to move the button left n right

    //the array creates an index from 0 to the last number u have in the plist.
    // you link the index to the "beerdata" class and show the list one by one.
    //

    if (index == 0) {
        index = self.beerData.count-1;   //counter for moving between the images
       
    }else {
        index--;
          self.nextButton.enabled = YES;
        
    }
    
    [self showImage];
    
}




- (IBAction)nextButtonPressed:(id)sender {   //code to move the button left and right
                                            //target action code - 
    
    if (index == self.beerData.count-1) {
      //  index = 0;  -- this code is to go back to the first array no
        self.nextButton.enabled = NO;     //there is a function for nextbutton enabled
    }else {
        index++;
      
        
    }
    
    [self showImage];

    
//if the object is moved to the last part of the array, disable the button
    
}

//i got to add in a code to the button above for
//disable the previous button if your in the first position and do the same for the next button

- (IBAction)moreDetailButton:(id)sender{  //not required because the button is linked to the moredetail screen via the storboard
    
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//use this to link the main window to the detail viewcontroller window

{
    
    if ([segue.identifier isEqualToString:@"ADDBEER"]) {
        
    //    AddBeerViewController* pushAddBeerVC =
   //     segue.destinationViewController;
       // pushAddBeerVC.delegate = self;
        
    } else {
        
       BeerClass *detailBeer = self.beerData[self.index];
    ((DetailViewController *) segue.destinationViewController).currentBeer = detailBeer;
        
    }


//
//    BeerClass *detailBeer = self.beerData[self.index];
////  Beerclass make a pointer target it to the self of the array of the beer and select the beer index
//    
//    
//    ((DetailViewController *) segue.destinationViewController).currentBeer = detailBeer;
//    
//    //this is the controller window link the segue to the detailviewcontroller and show the beer detail
//    //
    
    
}

-(void)showImage{

    BeerClass *currentBeer = self.beerData[index];
    UIImage *image = [UIImage imageNamed:currentBeer.beerLogo];
    
    imageView.image = image;
    labelTitle.text = currentBeer.beerName;
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
