//
//  InboxTableViewController.h
//  Ribbit
//
//  Created by JIAN WANG on 5/25/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface InboxTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *messages;
@property (nonatomic, strong) PFObject *selectedMessage;

- (IBAction)logout:(UIBarButtonItem *)sender;

@end
