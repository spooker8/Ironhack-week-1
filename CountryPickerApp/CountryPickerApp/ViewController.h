//
//  ViewController.h
//  CountryPickerApp
//
//  Created by Anand Kumar on 5/7/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource, UITextFieldDelegate, UIPickerViewDelegate>


//use delegate to use the uipicker, u need to use this to call someone if u need help
//delegate does this for you.





typedef enum {
    
    CountryNameSpain = 00,    //typedef defines array 0 item 0 in plist file
    CountryNameFrance = 01,   //typedef defines array 0 item 1 in plist file
    CountryNameLithuania = 02 //typedef defines array 0 item 1 in plist file
}LanguageCountryName;



typedef enum {
    
    CountrySpainCityNameColumn = 1,
    CountryFranceCityNameColumn = 2,
    CountryLithuaniaCityNameColumn= 3
}LanguageCountryPickerCities;



typedef enum {
    
    CountrySpainLanguageNameColumn = 4,
    CountryFranceLanguagsNameColumn = 5,
    CountryLithuaniaLanguageNameColumn= 6
}LanguageCountryPickerLanguage;


@end

