//
//  ddictionary.m
//  imageslider
//
//  Created by Anand Kumar on 5/6/15.
//  Copyright (c) 2015 anand. All rights reserved.
// the way i can only learn is to translate the codes to understandable english form mix with sytanx definition and meaning.
//
//

#import "ddictionary.h"
#import "images.h"

#define _IMAGENAME @"ImageFileName"  //constant file to link to the plist file
#define _TITLE @"ImageTitle" //constant file to link to the plist file.


@implementation NSDictionary (DictionaryImages)  //check with the rest what can go after the implementation...



-(images *)listFromDataDictionary {   //check with the rest what type can go inside (image *)
    
    
    NSString *imageName =self[_IMAGENAME];
    NSString *title = self[_TITLE];
    
    images *DImagesList = [[images alloc] init];     //What r we doing here ??
    
        if(imageName != nil){
    
            DImagesList.imageName = imageName;
        }
        if(title != nil){
    
            DImagesList.title = title;
        }
    
        
    
    return DImagesList;
    }







@end
