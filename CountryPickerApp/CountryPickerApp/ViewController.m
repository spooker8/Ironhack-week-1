//
//  ViewController.m
//  CountryPickerApp
//
//  Created by Anand Kumar on 5/7/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "ViewController.h"
#import "CallThePlist.h"
#define kNumberOfComponents 3  //number of columns 3

@interface ViewController ()

//@property (nonatomic, strong) NSArray *arrayOfCountries;
//@property (nonatomic, strong) NSArray *arrayOfCountries;
//@property (nonatomic, strong) NSArray *arrayOfLanguages;
//@property (nonatomic, strong) NSArray *arrayOfCities;
//@property (nonatomic, strong) NSArray *arrayOfCapitals;
//@property (nonatomic, strong) NSArray *arrayOfJapanCities;


@property (nonatomic, weak) IBOutlet UIPickerView *pickerView;  //pickerview property call



@property (strong, nonatomic) NSArray *arrayFromPlist;



@end

@implementation ViewController


@synthesize arrayFromPlist;




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //add the array call code here
    
    
    self.pickerView.delegate = self;    //delegate function for the uipicker
    self.pickerView.dataSource = self;  //uipicker datasource call aswell

    
    
    NSArray *arrayFromPlist = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"CountryList" ofType:@"plist"]];
    
    
    
    
    
    
}



#pragma mark - UIPickerViewDataSource protocol implementation  //how many rows u want to have in each column :components

- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    switch (component) {
        case LanguageCountryName:
            return arrayOfCountries.count;
            break;
        case LanguageCountryPickerCities:
            return arrayOfLanguages.count;
            break;
        case LanguageCountryPickerLanguage:
            return arrayOfCities.count;
            break;
        default:
            return 0;
            break;
            
    }
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {   //this is telling how many components the picker view have
    return kNumberOfComponents;
}


- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    //this is going to tell what im going to put in every row..
    
    switch (component) {
        case LanguageCountryName:
            return [self.arrayOfCountries objectAtIndex:row];
            break;
        case LanguageCountryPickerCities:
            return [self.arrayOfLanguages objectAtIndex:row];
            break;
        case LLanguageCountryPickerLanguage:
            return [self.arrayOfCities objectAtIndex:row];
            break;
            
        default:
            return @"";
            break;
    }
    
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
