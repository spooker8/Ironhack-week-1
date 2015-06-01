//
//  images.m
//  imageslider
//
//  Created by Anand Kumar on 5/6/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "images.h"


@implementation images

-(instancetype) initWithName:(NSString *)imageName andTitle: (NSString *)title{
   
    
        self = [super init];    //using self to return the initilization to itself
        if (self) {
            self.imageName = imageName;
            self.title = title;
        
        }
        return self;
    
        //return to itself because its returning to itself
        //note to myself to figure out the self method in detail, coz im still dont fucking get it.
    
//        Again, extremely simple stuff here. You synthesize your properties, and create your initializer to fill in your instance variables from the passed-in parameters. Note there is no need for dealloc, since you are using ARC.
//    

    
    
}

@end


