//
//  ViewController.h
//  imageslider
//
//  Created by Anand Kumar on 5/6/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController



@property (strong, nonatomic) IBOutlet UIImageView *imageScroll;     //the property for the image
@property (strong, nonatomic) IBOutlet UILabel *imageLabel;          //the property for the label

@property (strong, nonatomic) NSMutableArray *imageListingNSMute;   //nsmutable array
@property (strong, nonatomic) NSArray *imagesArray;                  //array of the image

@property (retain, nonatomic) NSInteger *lblCount;
@property (strong, nonatomic) NSInteger *currentIndex;

-(IBAction)swipeRight:(id)sender;
-(IBAction)swipeLeftt:(id)sender;




@end

