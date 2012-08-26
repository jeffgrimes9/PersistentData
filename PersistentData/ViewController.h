//
//  ViewController.h
//  PersistentData
//
//  Created by Jeff Grimes on 8/25/12.
//  Copyright (c) 2012 Jeff Grimes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, retain) IBOutlet UITextField *textField;
@property (nonatomic, retain) IBOutlet UISegmentedControl *segmentedControl1;
@property (nonatomic, retain) IBOutlet UISegmentedControl *segmentedControl2;
@property (nonatomic, retain) IBOutlet UISegmentedControl *segmentedControl3;
@property (nonatomic, retain) IBOutlet UISlider *slider;
@property (nonatomic, retain) IBOutlet UISwitch *switch1;
@property (nonatomic, retain) IBOutlet UISwitch *switch2;
@property (nonatomic, retain) IBOutlet UISwitch *switch3;
@property (nonatomic, retain) IBOutlet UIStepper *stepper1;
@property (nonatomic, retain) IBOutlet UIStepper *stepper2;
@property (nonatomic, retain) IBOutlet UILabel *stepper1Label;
@property (nonatomic, retain) IBOutlet UILabel *stepper2Label;

- (IBAction)hideKeyboard;
- (IBAction)stepper1DidChange;
- (IBAction)stepper2DidChange;
- (IBAction)storeData;
- (IBAction)fetchData;

@end