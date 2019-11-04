//
//  JLCSettingsViewController.m
//  Planets-objc
//
//  Created by Jake Connerly on 11/4/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

#import "JLCSettingsViewController.h"

@interface JLCSettingsViewController ()

@end

@implementation JLCSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)doneWasTapped:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setBool:_isPlutoSwitch.isOn forKey:@"shouldShowPluto"];
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
