//
//  ADTableViewCellLeftDetail.m
//  DynamicTableViewCellHeight
//
//  Created by Jeffrey Kereakoglow on 3/9/15.
//  Copyright (c) 2015 Alexis Digital. All rights reserved.
//

#import "ADTableViewCellLeftDetail.h"

@interface ADTableViewCellLeftDetail ()

@property (nonatomic, weak) IBOutlet UILabel *title;
@property (nonatomic, weak) IBOutlet UILabel *detail;

@end

/**
 We are forced to subclass `UITableViewCell` because we must be able to define
 top-spacing and bottom-spacing on the table view cell and the built-in cell
 styles, like `UITableViewCellStyleDefault`, don't allow us to define constraints.
 */

@implementation ADTableViewCellLeftDetail

/**
 Implement our own setter so we can easily set the values to the corresponding
 `UILabels`.
 */
- (void)setText:(NSDictionary *)text {

  // In this app, the line below is unnecessary because we're setting the parameter
  // `text` directly to the properties `title` and `detail`. However, it is
  // expected that a setter sets the state of the object, hence, we set
  // the ivar `_text` anyway.
  _text = text;

  self.title.text = text[@"title"];
  self.detail.text = text[@"detail"];
  
}

@end
