//
//  DetailViewController.h
//  SuperDuperBeerApp
//
//  Created by Anand Kumar on 5/8/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"
#import "BeerClass.h"
#import "ViewController.h"


@interface DetailViewController : UIViewController

@property (nonatomic, strong) BeerClass *currentBeer;


//--------

@property (weak, nonatomic) IBOutlet UIImageView *detailBeerBottleView;

@property (weak, nonatomic) IBOutlet UIImageView *detailLogoView;

@property (weak, nonatomic) IBOutlet UIImageView *detailCountryFlag;


//---------


@property (weak, nonatomic) IBOutlet UILabel *detailBeerName;

@property (weak, nonatomic) IBOutlet UILabel *detailBeerOrigin;

@property (weak, nonatomic) IBOutlet UILabel *detailAlcoLevel;



//---

@end
