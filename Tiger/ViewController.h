//
//  ViewController.h
//  Tiger
//
//  Created by shin-fu on 2014/12/14.
//  Copyright (c) 2014年 shin-fu. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
@property (weak) IBOutlet NSTextField *checkdial1;
@property (weak) IBOutlet NSTextField *checkdial2;
@property (weak) IBOutlet NSTextField *checkdial3;
@property (weak) IBOutlet NSTextField *checkdial4;
- (IBAction)sub_div:(id)sender;
@property (weak) IBOutlet NSSlider *slider3;
@property (weak) IBOutlet NSSlider *slider1;
@property (weak) IBOutlet NSSlider *slider4;
@property (weak) IBOutlet NSSlider *slider2;
@property NSInteger right_dial_value;
- (IBAction)rightButton:(id)sender;
@property NSInteger left_dial_value;
@property (weak) IBOutlet NSTextFieldCell *right_dail;
@property (weak) IBOutlet NSTextField *left_dial;
- (IBAction)add_mult:(id)sender;
- (IBAction)leftButton:(id)sender;
@property (weak) IBOutlet NSTextField *right_dial2;
@property (weak) IBOutlet NSTextField *right_dial3;
@property (weak) IBOutlet NSTextField *right_dial4;


@end

