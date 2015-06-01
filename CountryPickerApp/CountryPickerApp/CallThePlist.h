//
//  CallThePlist.h
//  CountryPickerApp
//
//  Created by Anand Kumar on 5/8/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CallThePlist : NSObject



@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *fileName;


-(instancetype) initWithTitle:(NSString *)newTitle fileName:(NSString *)newFileName;






@end
