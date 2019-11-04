//
//  JLCPlanetsCollectionViewController.m
//  Planets-objc
//
//  Created by Jake Connerly on 11/4/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

#import "JLCPlanetsCollectionViewController.h"
#import "JLCPlanetCollectionViewCell.h"
#import "JLCPlanetController.h"
#import "JLCPlanet.h"

@interface JLCPlanetsCollectionViewController ()

@end

@implementation JLCPlanetsCollectionViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _planetController = [[JLCPlanetController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSLog(@"planets count %lu", self.planetController.planets.count);
    return self.planetController.planets.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    JLCPlanetCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PlanetCell" forIndexPath:indexPath];
    
    JLCPlanet *planet = [self.planetController.planets objectAtIndex:indexPath.item];
    
    cell.planetNameLabel.text = planet.planetName;
    cell.imageView.image = planet.planetImage;
    
    return cell;
}

@end
