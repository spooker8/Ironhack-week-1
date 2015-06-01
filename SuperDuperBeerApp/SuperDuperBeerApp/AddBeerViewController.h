//
//  AddBeerViewController.h
//  SuperDuperBeerApp
//
//  Created by Anand Kumar on 5/19/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BeerClass.h"


@protocol AddBeerViewControllerDelegate <NSObject>

@end

@interface AddBeerViewController : UIViewController <UIPickerViewDataSource, UITextFieldDelegate, UIPickerViewDelegate>


@property (weak, nonatomic) id<AddBeerViewControllerDelegate> delegate;


@end
