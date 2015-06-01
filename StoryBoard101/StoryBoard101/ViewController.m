//
//  ViewController.m
//  StoryBoard101
//
//  Created by Anand Kumar on 5/6/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet UILabel *lblText;
@property (nonatomic, strong) UILabel *lblMain;
@property (nonatomic, strong) UILabel *lblOther;


@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end


@implementation ViewController
@synthesize lblText;
@synthesize lblOther;
@synthesize imageView;

//making a button plus plus using design button

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //to display image on screen
    UIImage *image = [UIImage imageNamed:@"spiderman.jpg"];
    [self.imageView setImage:image];
    [self.imageView setContentMode:UIViewContentModeScaleToFill];
    
                               

    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



                           
-(IBAction)button:(UIButton *)sender {
    
    lblText.text = [NSString stringWithFormat: @"%d", [lblText.text intValue] + 1];
                    
 }


//-(IBAction)didShowNewOldController:(id)sender {
//    NewViewController *newVC = [[NewViewController alloc]
//    initWithNibName:@"NewViewConotroller" bundle:nil];
//    [self presentViewController:newVC animated:YES completion:nil];
//    
//}

#pragma mark aux


-(void)printValueToMainLabel:(NSUInteger)valueToShow {
    lblOther.text = [NSString stringWithFormat:@"%lu", valueToShow];
}




@end
