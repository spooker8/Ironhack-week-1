//
//  BeerClass.h
//  SuperDuperBeerApp
//
//  Created by Anand Kumar on 5/8/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BeerClass : NSObject



// @property(nonatomic) NSInteger beerID;  //NSInteger is not a pointer , so dont need to use *


@property(nonatomic, strong) NSString *beerName;
@property(nonatomic, strong) NSString *beerOrigin;
@property(nonatomic, strong) NSString *beerAlcoLevel;
@property(nonatomic, strong) NSString *beerLogo;
@property(nonatomic, strong) NSString *beerBottle;
@property(nonatomic, strong) NSString *countryFlag;


-(instancetype) initWithName:(NSString *)beerName beerOrigin:(NSString *)beerOrigin beerAlcoLevel:(NSString *)beerAlcoLevel beerLogo:(NSString *)beerLogo beerBottle:(NSString *)beerBottle countryFlag:(NSString *)countryFlag;

//init all together as all of them are used together from the plist database file.



@end

// code i referred from for the multiple initilization of names
//(id)initWithName:(NSString *)tutorName tutorID:(int)tutorID tutorPhone:(NSString *)tutorPhone tutorEmail:(NSString *)tutorEmail;
//but in your .m file you have this...
//
//- (id)initWithName:(NSString *)title subtitle:(NSString *)subtitle


//-(instancetype) initWithName:(NSString *)name andTitle: (NSString *)title;
//above is the initilization for 2 names, use the "and"


