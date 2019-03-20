//
//  ViewController.m
//  Demo
//
//  Created by Des Marks on 3/19/19.
//  Copyright © 2019 Des Marks. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *baseView;

@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_baseView setBackgroundColor:[UIColor whiteColor]];
    
    [_textLabel setText:@"Your text here!"];
    
    [_textLabel setTextColor:[UIColor blackColor]];
}

@end
