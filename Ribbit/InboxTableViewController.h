//
//  InboxTableViewController.h
//  Ribbit
//
//  Created by JIAN WANG on 5/25/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InboxTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *messages;

- (IBAction)logout:(UIBarButtonItem *)sender;

@end
