//
//  JLCPlanet.m
//  Planets-objc
//
//  Created by Jake Connerly on 11/4/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

#import "JLCPlanet.h"

@implementation JLCPlanet

- (instancetype)initWithName:(NSString *)planetName planetImage:(UIImage *)planetImage {
    self = [super init];
    
    if (self) {
        _planetName = planetName;
        _planetImage = planetImage;
    }
    return self;
}

@end
