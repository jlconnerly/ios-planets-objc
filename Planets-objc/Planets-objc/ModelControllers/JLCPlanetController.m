//
//  JLCPlanetController.m
//  Planets-objc
//
//  Created by Jake Connerly on 11/4/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JLCPlanetController.h"
#import "JLCPlanet.h"

@implementation JLCPlanetController

- (instancetype)init {
    self = [super init];
    
    if (self) {
        _planets = [[NSMutableArray alloc] initWithObjects:
                    [[JLCPlanet alloc] initWithName:@"Earth" planetImage:[UIImage imageNamed:@"earth"]],
                    [[JLCPlanet alloc] initWithName:@"Jupiter" planetImage:[UIImage imageNamed:@"jupiter"]],
                    [[JLCPlanet alloc] initWithName:@"Mars" planetImage:[UIImage imageNamed:@"mars"]],
                    [[JLCPlanet alloc] initWithName:@"Mercury" planetImage:[UIImage imageNamed:@"mercury"]],
                    [[JLCPlanet alloc] initWithName:@"Neptune" planetImage:[UIImage imageNamed:@"neptune"]],
                    [[JLCPlanet alloc] initWithName:@"Saturn" planetImage:[UIImage imageNamed:@"saturn"]],
                    [[JLCPlanet alloc] initWithName:@"Uranus" planetImage:[UIImage imageNamed:@"uranus"]],
                    [[JLCPlanet alloc] initWithName:@"Venus" planetImage:[UIImage imageNamed:@"venus"]],
                    nil];
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        _shouldShowPluto = [defaults boolForKey:@"shouldShowPluto"];
        
        if (_shouldShowPluto) {
            [_planets addObject: [[JLCPlanet alloc] initWithName:@"Pluto" planetImage: [UIImage imageNamed:@"pluto"]]];
        }
    }
    

    return self;
}

@end
