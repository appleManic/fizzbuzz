//
//  FizzBuzz.m
//  FizzBuzz
//
//  Created by Pawan selokar on 9/25/14.
//  Copyright (c) 2014 NeRdS. All rights reserved.
//

#import "FizzBuzz.h"

@implementation FizzBuzz

+ (NSString*) printFizzBuzz:(int)i
{
    NSString *printThis;
            
        if (i%3 == 0 && i%5 ==0) {
            
            printThis = @"FIZZBUZZ!!";
            
            return printThis;
            
          //  NSLog(@"FIZZBUZZ");
        }else if (i%5 ==0){
            
            printThis = @"BUZZ!!";

//            NSLog(@"BUZZ");
        }else if (i%3 == 0){
            printThis = @"FIZZ!!";

        //    NSLog(@"FIZZ");
        }else {
            printThis = @"Bad Luck, Try again!!";

      }
    return printThis;
}

@end
