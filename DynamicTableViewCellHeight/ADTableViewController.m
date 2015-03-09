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

  self.dataSource = @[@{@"title":@"Moby Dick",
                        @"detail":@"Call me Ishmael. Some years ago—never mind how long precisely—having little or no money in my purse, and nothing particular to interest me on shore, I thought I would sail about a little and see the watery part of the world."},
                      @{@"title":@"A Tale of Two Cities",
                        @"detail":@"It was the best of times, it was the worst of times, it was the age of wisdom, it was the age of foolishness, it was the epoch of belief, it was the epoch of incredulity, it was the season of Light, it was the season of Darkness, it was the spring of hope, it was the winter of despair, we had everything before us, we had nothing before us, we were all going direct to Heaven, we were all going direct the other way--in short, the period was so far like the present period, that some of its noisiest authorities insisted on its being received, for good or for evil, in the superlative degree of comparison only."},
                      @{@"title":@"The Adventures of Huckleberry Finn",
                        @"detail":@"YOU don't know about me without you have read a book by the name of \"The Adventures of Tom Sawyer\"; but that ain't no matter."},
                      @{@"title":@"On the Road",
                        @"detail":@"I first met Dean not long after my wife and I split up. I had just gotten over a serious illness that I won't bother to talk about, except that it had something to do with the miserably weary split-up and my feeling that everything was dead."},
                      @{@"title":@"The Catcher in the Rye",
                        @"detail":@"If you really want to hear about it, the first thing you'll probably want to know is where I was born, and what my lousy childhood was like, and how my parents were occupied and all before they had me, and all that \"David Copperfield\" kind of crap"}];

  // We must set these properties in this method in order for automatic cell
  // sizing to work.
  self.tableView.estimatedRowHeight = 44.0f;
  self.tableView.rowHeight = UITableViewAutomaticDimension;
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView * __unused)tableView {
  return 1;
}

- (NSInteger)tableView:(UITableView * __unused)tableView numberOfRowsInSection:(NSInteger __unused)section {
    return (NSInteger)self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  ADTableViewCellLeftDetail *cell;

  cell = (ADTableViewCellLeftDetail *)[tableView dequeueReusableCellWithIdentifier:@"leftDetail"
                                                                      forIndexPath:indexPath];
  cell.text = self.dataSource[(NSUInteger)indexPath.row];

  return cell;
}

#pragma mark - Table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  // Deselect the row
  [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
