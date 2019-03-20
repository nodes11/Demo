//
//  ViewController.m
//  Demo
//
//  Created by Des Marks on 3/19/19.
//  Copyright © 2019 Des Marks. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UIView *baseView;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UITextField *textInput;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_baseView setBackgroundColor:[UIColor whiteColor]];
    
    [_textLabel setText:@"Your text here..."];
    
    [_textLabel setTextColor:[UIColor blackColor]];
    
    [_textInput setDelegate:self];
}

#pragma mark - UITextFieldDelegate Implementation

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    [_textLabel setText:textField.text];

    [_textInput setText:nil];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return YES;
}

@end
