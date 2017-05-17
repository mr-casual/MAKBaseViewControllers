//
//  MAKBaseViewController.m
//  MAKBaseViewControllers
//
//  Created by Martin Kloepfel on 11.12.14.
//  Copyright (c) 2014 Martin Kloepfel. All rights reserved.
//

#import "MAKBaseViewController.h"
#import "MAKBaseViewController-Protected.h"


@implementation MAKBaseViewController

#pragma mark - UIViewController methods

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.isAppearing = YES;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    if (!self.isDisappearing)
        self.isVisible = YES;
    self.isAppearing = NO;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    self.isVisible = NO;
    self.isDisappearing = YES;
}

- (void) viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    self.isVisible = NO;
    self.isDisappearing = NO;
}

#pragma mark - Interface orientation

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    self.isRotating = YES;
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    self.isRotating = NO;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id <UIViewControllerTransitionCoordinator>)coordinator
{
    self.isRotating = YES;

    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    
//    //The device has already rotated, that's why this method is being called.
//    UIInterfaceOrientation toOrientation   = [[UIDevice currentDevice] orientation];
//    //fixes orientation mismatch (between UIDeviceOrientation and UIInterfaceOrientation)
//    if (toOrientation == UIInterfaceOrientationLandscapeRight) toOrientation = UIInterfaceOrientationLandscapeLeft;
//    else if (toOrientation == UIInterfaceOrientationLandscapeLeft) toOrientation = UIInterfaceOrientationLandscapeRight;
//    
//    UIInterfaceOrientation fromOrientation = [[UIApplication sharedApplication] statusBarOrientation];

    
    [coordinator animateAlongsideTransition:nil completion:^(id<UIViewControllerTransitionCoordinatorContext> context) {
        self.isRotating = NO;
    }];
}

@end
