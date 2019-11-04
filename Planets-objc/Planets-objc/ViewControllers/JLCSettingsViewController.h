//
//  JLCSettingsViewController.h
//  Planets-objc
//
//  Created by Jake Connerly on 11/4/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JLCSettingsViewController : UIViewController

@property (weak) IBOutlet UISwitch *isPlutoSwitch;

- (IBAction)doneWasTapped:(id)sender;

@end

