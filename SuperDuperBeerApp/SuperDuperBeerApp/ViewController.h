//
//  ViewController.h
//  SuperDuperBeerApp
//
//  Created by Anand Kumar on 5/8/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "BeerClass.h"  //if this is imported in .h always place in .m file



@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (nonatomic, strong) NSMutableArray *beerData;    //Empty mutablearray created  //convert the array of dictionary to array of classes

@property (weak, nonatomic) IBOutlet UILabel *labelTitle;

@property (weak, nonatomic) IBOutlet UIButton *nextButton;





- (IBAction)previousBUttonPressed:(id)sender;
- (IBAction)nextButtonPressed:(id)sender;

// - (IBAction)moreDetailButton:(id)sender;



@end

