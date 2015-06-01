//
//  DetailViewController.m
//  SuperDuperBeerApp
//
//  Created by Anand Kumar on 5/8/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "DetailViewController.h"
#import "BeerClass.h"
#import "ViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize detailBeerBottleView;
@synthesize detailLogoView;
@synthesize detailCountryFlag;
@synthesize detailBeerName;
@synthesize detailBeerOrigin;
@synthesize detailAlcoLevel;

@synthesize currentBeer;



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    [self showImage]; //sending message  use square bracket
    
    
//    // Store the data in NSUserDefault
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    
//    [defaults setObject:];
//    
//    [defaults synchronize];
//    
//    NSLog(@"Data saved");
//}


    
    
    
}


-(void)showImage{
    
    
    // BeerClass *detailBeer = self.beerData[self.index];
    
    UIImage *imageBottle = [UIImage imageNamed:currentBeer.beerBottle];
    
    UIImage *imageLogo = [UIImage imageNamed:currentBeer.beerLogo];
   
    UIImage *imageFlag = [UIImage imageNamed:currentBeer.countryFlag];
   
   
    
    detailBeerBottleView.image = imageBottle;
   
    detailLogoView.image = imageLogo;
    detailCountryFlag.image = imageFlag;
    
    detailBeerName.text = currentBeer.beerName;
    detailBeerOrigin.text = currentBeer.beerOrigin;
    detailAlcoLevel.text = currentBeer.beerAlcoLevel;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}







/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
