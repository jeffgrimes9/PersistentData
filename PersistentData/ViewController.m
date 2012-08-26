//
//  ViewController.m
//  PersistentData
//
//  Created by Jeff Grimes on 8/25/12.
//  Copyright (c) 2012 Jeff Grimes. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.stepper1.minimumValue = 0;
    self.stepper1.maximumValue = 99;
    self.stepper2.minimumValue = 0;
    self.stepper2.maximumValue = 99;
}

- (IBAction)hideKeyboard {
    [self.textField resignFirstResponder];
}

- (IBAction)stepper1DidChange {
    int stepperValue = (int)self.stepper1.value;
    self.stepper1Label.text = [NSString stringWithFormat:@"%i", stepperValue];
}

- (IBAction)stepper2DidChange {
    int stepperValue = (int)self.stepper2.value;
    self.stepper2Label.text = [NSString stringWithFormat:@"%i", stepperValue];
}

- (IBAction)storeData {
    NSString *string = self.textField.text;
    NSNumber *control1 = [NSNumber numberWithInt:(int)self.segmentedControl1.selectedSegmentIndex];
    NSNumber *control2 = [NSNumber numberWithInt:(int)self.segmentedControl2.selectedSegmentIndex];
    NSNumber *control3 = [NSNumber numberWithInt:(int)self.segmentedControl3.selectedSegmentIndex];
    NSNumber *slider = [NSNumber numberWithFloat:self.slider.value];
    BOOL switch1 = self.switch1.on;
    BOOL switch2 = self.switch2.on;
    BOOL switch3 = self.switch3.on;
    NSNumber *stepper1 = [NSNumber numberWithInt:(int)self.stepper1.value];
    NSNumber *stepper2 = [NSNumber numberWithInt:(int)self.stepper2.value];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:string forKey:@"string"];
    [defaults setObject:control1 forKey:@"control1"];
    [defaults setObject:control2 forKey:@"control2"];
    [defaults setObject:control3 forKey:@"control3"];
    [defaults setObject:slider forKey:@"slider"];
    [defaults setBool:switch1 forKey:@"switch1"];
    [defaults setBool:switch2 forKey:@"switch2"];
    [defaults setBool:switch3 forKey:@"switch3"];
    [defaults setObject:stepper1 forKey:@"stepper1"];
    [defaults setObject:stepper2 forKey:@"stepper2"];
    
    [defaults synchronize];
}

- (IBAction)fetchData {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSString *string = [defaults stringForKey:@"string"];
    NSNumber *control1 = [defaults objectForKey:@"control1"];
    NSNumber *control2 = [defaults objectForKey:@"control2"];
    NSNumber *control3 = [defaults objectForKey:@"control3"];
    NSNumber *slider = [defaults objectForKey:@"slider"];
    BOOL switch1 = [defaults boolForKey:@"switch1"];
    BOOL switch2 = [defaults boolForKey:@"switch2"];
    BOOL switch3 = [defaults boolForKey:@"switch3"];
    NSNumber *stepper1 = [defaults objectForKey:@"stepper1"];
    NSNumber *stepper2 = [defaults objectForKey:@"stepper2"];
    
    self.textField.text = string;
    self.segmentedControl1.selectedSegmentIndex = [control1 integerValue];
    self.segmentedControl2.selectedSegmentIndex = [control2 integerValue];
    self.segmentedControl3.selectedSegmentIndex = [control3 integerValue];
    self.slider.value = [slider floatValue];
    self.switch1.on = switch1;
    self.switch2.on = switch2;
    self.switch3.on = switch3;
    self.stepper1.value = (double)[stepper1 intValue];
    self.stepper2.value = (double)[stepper2 intValue];
    self.stepper1Label.text = [NSString stringWithFormat:@"%i", (int)self.stepper1.value];
    self.stepper2Label.text = [NSString stringWithFormat:@"%i", (int)self.stepper2.value];
}

- (void)viewDidUnload {
    [super viewDidUnload];
}

- (void)dealloc {
    [super dealloc];
}

@end