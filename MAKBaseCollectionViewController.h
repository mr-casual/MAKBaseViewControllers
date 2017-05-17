//
//  MAKBaseCollectionViewController.h
//  MAKBaseViewControllers
//
//  Created by Martin Kloepfel on 11.12.14.
//  Copyright (c) 2014 Martin Kloepfel. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MAKBaseCollectionViewController : UICollectionViewController

/** The view controller is currently visible.
 @note This is not a guaranteed view hit test. It's only a boolean value that is indicating whether 'viewDidAppear' was called and 'viewWillDisappear' was not called yet.
 */
@property (nonatomic, readonly) BOOL isVisible;

/// A boolean value indicating whether the view controller is appearing.
@property (nonatomic, readonly) BOOL isAppearing;

/// A boolean value indicating whether the view controller is disappearing.
@property (nonatomic, readonly) BOOL isDisappearing;

/// A boolean value indicating whether the view controller is rotating (changing the interface orientation).
@property (nonatomic, readonly) BOOL isRotating;

@end
