//
//  ViewController.m
//  FizzBuzz
//
//  Created by Pawan selokar on 9/25/14.
//  Copyright (c) 2014 NeRdS. All rights reserved.
//

#import "ViewController.h"
#import "FizzBuzz.h"

#define iteration ((int) 100)

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *iterationTextField;
@property (strong, nonatomic) IBOutlet UILabel *buzzLabel;

@end

@implementation ViewController 
            
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // get the iterations for  fizz and buzz
    NSArray *getFizzBuzzArray = [self getTheFizzBuzz];
   // NSLog(@"Print: %@", getFizzBuzzArray);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray *)getTheFizzBuzz {

    NSMutableArray *array= [[NSMutableArray alloc] init];
    
    for (int i =1; i<=iteration; i++) {
        [array addObject:[FizzBuzz printFizzBuzz:i]];
    }
    return array;

}

#pragma mark - UITextField delegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField {

    // label value
    _buzzLabel.text =[FizzBuzz printFizzBuzz:[textField.text intValue]];
    [textField resignFirstResponder];
    
    return YES;
}

@end
