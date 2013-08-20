//
//  ATableViewController.m
//  SmartTableViewCellDemo
//
//  Created by Kino on 13-8-19.
//  Copyright (c) 2013年 Kino. All rights reserved.
//

#import "ATableViewController.h"
#import "NibCell.h"
#import "WithoutNibCell.h"

#import "PRPShadowedTableView.h"


//#define NibCellMode
#define WithutNibCellMode
@interface ATableViewController ()

@property (nonatomic, retain) UINib *cellNib;

@end

@implementation ATableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.cellNib = nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
#ifdef NibCellMode //NIB的cell
    NibCell *cell = [NibCell cellForTableView:tableView fromNib:self.cellNib];
    cell.content.text = @"ohehhehhe";
    // Configure the cell...
    return cell;
#else   //非NIB CELL
    WithoutNibCell *cell = [WithoutNibCell cellForTableView:tableView];
    cell.textLabel.text = @"OAOAOAOAO";
    return cell;
#endif
}

- (UINib *)cellNib
{
    if (_cellNib == nil)
    {
        self.cellNib = [NibCell nib];
    }
    return _cellNib;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
}

@end
