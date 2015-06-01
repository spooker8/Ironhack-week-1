//
//  ViewController.m
//  imageslider
//
//  Created by Anand Kumar on 5/6/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "ViewController.h"
#import "images.h"
#import "ddictionary.m"


@interface ViewController ()



@end


//i need to create an NSMutableArray property to parse the data i have in plist file.
//then i need to do something to show the images from my xc assett folder
//i need to somehow link the images as a filename
//link the button

@implementation ViewController


@synthesize lblCount;
@synthesize <#property#>;
@synthesize currentIndex;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    


    NSArray *imagesArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource: @"imagename" ofType: @"plist"]]; //take the file from the ddictionary file

    
    self.imageListingNSMute = [[NSMutableArray alloc] init];   //create a method to init and alloc-create another method to read
    
    
   
    //To Declare an object with two properties – a string for the name of the Image and the title of the image,
    
    //to have a counter to update the image to go next next next
    //i would load the data from the plis
    //load the first image into the intefacr
    //wait for the user to do the stuff

    
    
    

}





-(IBAction)swipeRight:(id)sender{
    
    
    //to make it move left and right , u have to create a pointer and a counter
    // so u prepare a country
 
}


-(IBAction)swipeLeftt:(id)sender{  //same as above.
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
