//
//  images.h
//  imageslider
//
//  Created by Anand Kumar on 5/6/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface images : NSObject



@property (nonatomic , strong) NSString *imageName;
@property (nonatomic, strong) NSString *title;



-(instancetype) initWithName:(NSString *)imageName andTitle: (NSString *)title;


//create a method for reading the files.

//why do u do this ?? what is the purpose ?
//to link the both properties above so u dont have to create the method and initialize them separately'
//place the self method here,

//Declaring an object with two properties – a string for the name of the Image and the title of the image,






@end


