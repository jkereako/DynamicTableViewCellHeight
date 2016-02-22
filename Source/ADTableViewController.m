//
//  ADTableViewController.m
//  DynamicTableViewCellHeight
//
//  Created by Jeffrey Kereakoglow on 3/9/15.
//  Copyright (c) 2015 Alexis Digital. All rights reserved.
//

#import "ADTableViewController.h"
#import "ADTableViewCellLeftDetail.h"

@interface ADTableViewController ()

@property(nonatomic, readwrite) NSArray *dataSource;

@end

@implementation ADTableViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  // Load the data from the resource file Data.plist
  NSString* resourcePath = [[NSBundle mainBundle] pathForResource:@"Data"
                                                           ofType:@"plist"];
  self.dataSource = [NSArray arrayWithContentsOfFile:resourcePath];

  // We must set these properties in this method in order for automatic cell
  // sizing to work.
  self.tableView.estimatedRowHeight = 44.0f;
  self.tableView.rowHeight = UITableViewAutomaticDimension;
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView * __unused)tableView {
  return (NSInteger)self.dataSource.count;
}

- (NSInteger)tableView:(UITableView * __unused)tableView numberOfRowsInSection:(NSInteger)section {
    return (NSInteger)((NSDictionary *)self.dataSource[(NSUInteger)section]).count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell;
  NSDictionary *text = self.dataSource[(NSUInteger)indexPath.section][(NSUInteger)indexPath.row];

  // Here we determine that the first section will use the table view cell
  // "stock" while the second section will use the table view cell "custom".
  switch (indexPath.section) {
    case 0: {

      cell = [tableView dequeueReusableCellWithIdentifier:@"stock"
                                             forIndexPath:indexPath];

      cell.textLabel.text = text[@"title"];
      cell.detailTextLabel.text = text[@"detail"];
    }
      break;

    case 1: {
      cell = [tableView dequeueReusableCellWithIdentifier:@"custom"
                                             forIndexPath:indexPath];
      ((ADTableViewCellLeftDetail *)cell).text = text;

      break;
    }
  }

  return cell;
}

#pragma mark - Table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  // Deselect the row
  [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
