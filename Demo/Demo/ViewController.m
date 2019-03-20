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

@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UISlider *alphaSlider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
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

#pragma mark - UISlider Value Changed Selectors

- (IBAction)redSliderValueChanged:(id)sender
{
    [self updateBackgroundColor];
}

- (IBAction)greenSliderValueChanged:(id)sender
{
    [self updateBackgroundColor];
}

- (IBAction)blueSliderValueChanged:(id)sender
{
    [self updateBackgroundColor];
}

- (IBAction)alphaSliderValueChanged:(id)sender
{
    [self updateBackgroundColor];
}

- (void)updateBackgroundColor
{
    CGFloat red = _redSlider.value/255.f;
    CGFloat green = _greenSlider.value/255.f;
    CGFloat blue = _blueSlider.value/255.f;
    
    UIColor *backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:_alphaSlider.value];
    
    [_baseView setBackgroundColor:backgroundColor];
}
@end
