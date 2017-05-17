//
//  MAKBaseTableViewController-Protected.h
//  MAKBaseViewControllers
//
//  Created by Martin Kloepfel on 11.12.14.
//  Copyright (c) 2014 Martin Kloepfel. All rights reserved.
//

#import "MAKBaseViewController-Protected.h"


@interface MAKBaseTableViewController ()

// redeclaration to get write permission for internal use
@property (nonatomic, strong) UITableView *tableView;


@property (nonatomic) BOOL clearsSelectionOnViewWillAppear;
@property (nonatomic, strong) UIRefreshControl *refreshControl;

@end
