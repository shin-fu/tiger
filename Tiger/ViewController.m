//
//  ViewController.m
//  Tiger
//
//  Created by shin-fu on 2014/12/14.
//  Copyright (c) 2014年 shin-fu. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.slider1 setMaxValue:9];
    [self.slider2 setMaxValue:9];
    [self.slider3 setMaxValue:9];
    [self.slider4 setMaxValue:9];
    [self.slider1 setIntegerValue:9];
    [self.slider2 setIntegerValue:9];
    [self.slider3 setIntegerValue:9];
    [self.slider4 setIntegerValue:9];
    self.right_dial_value = 0;
    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)changeSlider:(id)sender {
    NSInteger v1 = 9-self.slider1.integerValue;
    NSInteger v2 = 9-self.slider2.integerValue;
    NSInteger v3 = 9-self.slider3.integerValue;
    NSInteger v4 = 9-self.slider4.integerValue;
    [self.checkdial1 setIntegerValue:v1];
    [self.checkdial2 setIntegerValue:v2];
    [self.checkdial3 setIntegerValue:v3];
    [self.checkdial4 setIntegerValue:v4];
}

- (IBAction)add_mult:(id)sender {
    NSInteger v1 = 9-self.slider1.integerValue;
    NSInteger v2 = 9-self.slider2.integerValue;
    NSInteger v3 = 9-self.slider3.integerValue;
    NSInteger v4 = 9-self.slider4.integerValue;
    NSLog(@"%ld",v1+v2*10+v3*100+v4*1000);
    self.right_dial_value += v1+v2*10+v3*100+v4*1000;
    NSLog(@"%ld",self.right_dial_value);
    self.left_dial_value += 1;
    [self updateRightValue:self.right_dial_value];
    [self.left_dial setIntegerValue:self.left_dial_value];
}

- (IBAction)leftButton:(id)sender {
    self.left_dial_value = 0;
    [self.left_dial setIntegerValue:self.left_dial_value];
}
- (IBAction)sub_div:(id)sender {
    NSInteger v1 = 9-self.slider1.integerValue;
    NSInteger v2 = 9-self.slider2.integerValue;
    NSInteger v3 = 9-self.slider3.integerValue;
    NSInteger v4 = 9-self.slider4.integerValue;
    NSLog(@"%ld",v1+v2*10+v3*100+v4*1000);
    self.right_dial_value -= v1+v2*10+v3*100+v4*1000;
    self.left_dial_value -= 1;
    NSLog(@"%ld",self.right_dial_value);
    [self updateRightValue:self.right_dial_value];
    [self.left_dial setIntegerValue:self.left_dial_value];
    
}

- (IBAction)rightButton:(id)sender {
    self.right_dial_value = 0;
    [self.right_dail setIntegerValue:0];
    [self.right_dial2 setIntegerValue:0];
    [self.right_dial3 setIntegerValue:0];
    [self.right_dial4 setIntegerValue:0];
}

- (void) updateRightValue:(int)value{
    [self.right_dail setIntegerValue:value%10];
    value /= 10;
    [self.right_dial2 setIntegerValue:value%10];
    value /= 10;
    [self.right_dial3 setIntegerValue:value%10];
    value /= 10;
    [self.right_dial4 setIntegerValue:value%10];
}
@end
