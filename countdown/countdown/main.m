//
//  main.m
//  countdown
//
//  Created by Anand Kumar on 4/27/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        int seconds = 50;
        while(seconds > 0) {
            NSLog(@"do some shit %d", seconds);
            seconds--;
        }
        
        NSLog(@"show some shit %d", seconds);
        
        int i;
        for (i=1; i <=100; i++) {
            NSLog(@"i = %d",i);
        }
        
    }
    return 0;
}
