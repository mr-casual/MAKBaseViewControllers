//
//  MAKBaseTableViewController.m
//  MAKBaseViewControllers
//
//  Created by Martin Kloepfel on 11.12.14.
//  Copyright (c) 2014 Martin Kloepfel. All rights reserved.
//

#import "MAKBaseTableViewController.h"
#import "MAKBaseTableViewController-Protected.h"


@implementation MAKBaseTableViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    return [self initWithStyle:UITableViewStylePlain];
}

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    if (self = [super initWithNibName:nil bundle:nil])
    {
        self.tableView = [[UITableView alloc] initWithFrame:CGRectZero style:style];
        self.tableView.delegate = self.tableView.dataSource = self;
        
        self.clearsSelectionOnViewWillAppear = YES;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableView.frame = self.view.bounds;
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:self.tableView];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if (self.clearsSelectionOnViewWillAppear)
    {
        for (NSIndexPath *indexPath in self.tableView.indexPathsForSelectedRows)
            [self.tableView deselectRowAtIndexPath:indexPath animated:NO];
    }
}


- (void)setRefreshControl:(UIRefreshControl *)refreshControl
{
    if (_refreshControl == refreshControl)
        return;
    _refreshControl = refreshControl;
    
    [self.tableView addSubview:_refreshControl];
}

@end
