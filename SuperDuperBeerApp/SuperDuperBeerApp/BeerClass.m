//
//  BeerClass.m
//  SuperDuperBeerApp
//
//  Created by Anand Kumar on 5/8/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "BeerClass.h"

@implementation BeerClass

@synthesize beerName;
@synthesize beerOrigin;
@synthesize beerAlcoLevel;   //if using synthesize, what to add at the below self.
@synthesize beerLogo;
@synthesize beerBottle;
@synthesize countryFlag;


//capital first letter is for classes and protocols

//check why there are not alloc here but there is an init
-(instancetype) initWithName:(NSString *)_beerName beerOrigin:(NSString *)_beerOrigin beerAlcoLevel:(NSString *)_beerAlcoLevel beerLogo:(NSString *)_beerLogo beerBottle:(NSString *)_beerBottle countryFlag:(NSString *)_countryFlag
{
    
    self = [super init];   //why super being there.
    
    if (self) {
        
       
        self.beerName = _beerName;
        self.beerOrigin = _beerOrigin;
        self.beerAlcoLevel = _beerAlcoLevel;
        self.beerLogo = _beerLogo;
        self.beerBottle = _beerBottle;
        self.countryFlag = _countryFlag;
        
    }
    
    return self;
    
    //
    
}

//meaning of return self


@end


//you comgine all the properties to one name because you gonna use all of them together, coz they r in the same row of data of a plist file or a database


