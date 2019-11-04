//
//  JLCPlanet.h
//  Planets-objc
//
//  Created by Jake Connerly on 11/4/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JLCPlanet : NSObject

@property NSString *planetName;
@property UIImage *planetImage;

- (instancetype)initWithName:(NSString *)planetName planetImage:(UIImage *)planetImage;

@end

