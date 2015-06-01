//
//  ViewController.m
//  pickerview
//
//  Created by Anand Kumar on 5/7/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "ViewController.h"
#import "ModelViewController.h"
#import "Push2ViewController.h"
#define kNumberOfComponents 3  //number of columns 3

@interface ViewController ()

@property (nonatomic, strong) NSArray *arrayOfStuff;
@property (nonatomic, strong) NSArray *arrayOfCountries;
@property (nonatomic, strong) NSArray *arrayOfLanguages;
@property (nonatomic, strong) NSArray *arrayOfCities;
@property (nonatomic, strong) NSArray *arrayOfCapitals;
@property (nonatomic, strong) NSArray *arrayOfJapanCities;


@property (nonatomic, weak) IBOutlet UITextField *textField;  //textfield always weak
@property (nonatomic, weak) IBOutlet UITextField *textFieldResponse; //response textfield

@property (nonatomic, weak) IBOutlet UITextField *textFieldPush; //pushing to text field code


@property (nonatomic, weak) IBOutlet UIPickerView *pickerView;


@end

@implementation ViewController

@synthesize arrayOfStuff;
@synthesize arrayOfCountries;
@synthesize arrayOfLanguages;
@synthesize arrayOfCities;
@synthesize textField;
@synthesize textFieldResponse;

@synthesize textFieldPush;;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // do additional setup after loading the view
//    create view programmatially
//    prepare dat source
//    prepare delegates
//    getting data from the network
//    getting dat from a plist
    
    
    arrayOfLanguages= @[@"English", @"Spanish", @"Italian"];
    arrayOfCountries= @[@"English", @"Spanish", @"Italian"];
    arrayOfCities= @[@"English", @"Spanish", @"Italian"];

    self.pickerView.delegate = self;
    self.pickerView.dataSource = self;
    
    self.textField.delegate = self;  //add this together with the textfield to hide the keyboard
    
    self.textFieldPush.delegate = self;  //delegate code to push to the viewcontroller 2 to push via text field.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UIPickerViewDataSource protocol implementation  //how many rows u want to have in each column :components

- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    switch (component) {
        case LanguageCountryPickerColumnCountries:
            return arrayOfCountries.count;
            break;
        case LanguageCountryPickerColumnLanguages:
            return arrayOfLanguages.count;
            break;
        case LanguageCountryPickerColumnCities:
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
        case LanguageCountryPickerColumnCountries:
            return [self.arrayOfCountries objectAtIndex:row];
            break;
        case LanguageCountryPickerColumnLanguages:
            return [self.arrayOfLanguages objectAtIndex:row];
            break;
        case LanguageCountryPickerColumnCities:
            return [self.arrayOfCities objectAtIndex:row];
            break;
            
        default:
            return @"";
            break;
    }

}

- (IBAction)prepareForUnwind:(UIStoryboardSegue *)sender {   //this is the code to move to the next viewcontroller
    
  
    NSLog(@"foo");    //push method
    
    
    
}
    
#pragma mark - UITextFieldVIew Protocol methods

-(BOOL)textFieldShouldReturn:(UITextField *)mytextField  {  //mytextfield is linked to textfield propery via the delegate   self.textField.delegate = self; in the line 51
    
    [mytextField resignFirstResponder];  //press enter to hide the keyboard when u press the enter
    
    return YES;
}


//-(BOOL)textField:(UITextField *)mytextField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
//
//    if (mytextField.text.length >= 10 && ![string isEqualToString:@""]) {
//        
//        
//        return NO;
//}
//        return YES;
//}

//the both string is connected, its a string.


-(BOOL)textField:(UITextField *)_textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
  
    NSString *futureString = [NSString stringWithFormat:@"%@%@", self.textField.text, string];
    
    
    if ([futureString  isEqualToString:@"Ironhack"]) {
        
        self.textFieldResponse.text = @"Woohooo you said it right";
        
    
     }else {
        
      self.textFieldResponse.text = @"Your are wrong!!!!!";
        
     
    }
    return YES;
    
    
}


-(BOOL)textFieldPush:(UITextField *)textFieldPush shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    NSString *futureString = [NSString stringWithFormat:@"%@%@", self.textField.text, string];
    
    
    if ([futureString  isEqualToString:@"push"]) {
        
    
        
     //   [self performSegueWithIdentifier:@"PushFromTextField" sender:nil];
        
    //click the textfield and drag to the new viewcontroller and choose show
    // click the square button between the connection of the textifield and viewcontroller
    
       
        Push2ViewController *pushVC = [self.storyboard
                                      instantiateViewControllerWithIdentifier:@"ExtraPushController"];
        
      //  [self.navigationController push2ViewController:pushVC animated:YES];
        
        [self presentViewController:pushVC animated:YES completion:nil];
        
    }
    return YES;
    
    
}

//-(void)viewWillLayoutSubviews

//-(void)viewDidAppear:(BOOL)animated {
    
    // Perform animations or anything that you need the user to see  in action
    



//-(void)viewWillAppear:(BOOL)animated {
    
 //   NSLog(@"test");
    
    // tthe yser closed this view and its going to be cleaned int memory
  //  this is a root view controller and we just pushed a view or presented a model}

@end
