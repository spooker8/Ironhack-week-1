//
//  AddBeerViewController.m
//  SuperDuperBeerApp
//
//  Created by Anand Kumar on 5/19/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "AddBeerViewController.h"
#define kNumberOfComponents 1  // UIPicker Column Call

@interface AddBeerViewController ()

@property (weak, nonatomic) IBOutlet UITextField *beerNameLabel;
@property (weak, nonatomic) IBOutlet UITextField *alcoLevel;
@property (weak, nonatomic) IBOutlet UITextField *countryTextField;


@property (nonatomic, weak) IBOutlet UIPickerView *countryPicker;
@property (nonatomic, strong) NSMutableArray *countryArray;

@property (nonatomic, strong) IBOutlet UIToolbar  *mypickerToolbar;


@end

@implementation AddBeerViewController

@synthesize countryArray;
@synthesize countryTextField;
@synthesize mypickerToolbar;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    self.countryArray = [NSMutableArray new];
    for (NSString *countryCode in [NSLocale ISOCountryCodes]) {
        NSString *country = [[NSLocale systemLocale] displayNameForKey:NSLocaleCountryCode value:countryCode];
        [countryArray addObject: country];
    }
    
    
    self.countryPicker.delegate = self;
    self.countryPicker.dataSource = self;

  
    [self.countryPicker  setShowsSelectionIndicator:YES];
    
    countryTextField.inputView =  self.countryPicker  ;
    
    
    
    // Create done button in UIPickerView
    
    
    mypickerToolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 56)];
    
    mypickerToolbar.barStyle = UIBarStyleBlackOpaque;
    
    [mypickerToolbar sizeToFit];
    
    
    NSMutableArray *barItems = [[NSMutableArray alloc] init];
    
    
    UIBarButtonItem *flexSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    [barItems addObject:flexSpace];
    
    
    UIBarButtonItem *doneBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:
    UIBarButtonSystemItemDone target:self action:@selector(pickerDoneClicked)];
    
    [barItems addObject:doneBtn];
    
    
    [mypickerToolbar setItems:barItems animated:YES];
    
    
   countryTextField.inputAccessoryView = mypickerToolbar;
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)pickerDoneClicked

{
    NSLog(@"Done Clicked");
    
    [countryTextField resignFirstResponder];
  //  mypickerToolbar.hidden=YES;
  //  self.countryLabel.hidden=YES;
    
}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView

{
    
    return 1;
    
}





//PickerView Code
//- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
//    self.countryTextField = [self.countryArray objectAtIndex:row];
//}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return self.countryArray.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [self.countryArray objectAtIndex:row];
}




- (void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component

{
    
    countryTextField.text = [self.countryArray objectAtIndex:row];
    
}



//End of PickerView Code


//- (IBAction)countryTextField:(id)sender {
//}


- (IBAction)addCountryFlag:(id)sender {
}

- (IBAction)addBottleImage:(id)sender {
}


- (IBAction)addBeerBottleImage:(id)sender {
}

- (IBAction)submitBeer:(id)sender {
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
