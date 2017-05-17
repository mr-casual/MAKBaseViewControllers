//
//  MAKBaseTableViewController.h
//  MAKBaseViewControllers
//
//  Created by Martin Kloepfel on 11.12.14.
//  Copyright (c) 2014 Martin Kloepfel. All rights reserved.
//

#import "MAKBaseViewController.h"


@interface MAKBaseTableViewController : MAKBaseViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong, readonly) UITableView *tableView;

- (instancetype)initWithStyle:(UITableViewStyle)style NS_DESIGNATED_INITIALIZER;

@end
