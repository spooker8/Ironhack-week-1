//
//  ViewController.h
//  pickerview
//
//  Created by Anand Kumar on 5/7/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource, UITextFieldDelegate, UIPickerViewDelegate>

//delegate is someone u call if we need help
//


typedef enum {
    
    LanguageCountryPickerColumnCountries = 0,
    LanguageCountryPickerColumnLanguages = 1,
    LanguageCountryPickerColumnCities = 2
    }LanguageCountryPickerColumn;



typedef enum {
    
    LanguageCountryPickerColumnCountriesUK = 3,
    LanguageCountryPickerColumnCountriesSpain = 4,
    LanguageCountryPickerColumnCountriesJapan= 5
}LanguageCountryPickerCountries;


@end


