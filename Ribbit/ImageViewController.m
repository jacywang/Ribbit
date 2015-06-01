//
//  ImageViewController.m
//  Ribbit
//
//  Created by JIAN WANG on 5/31/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()

@end

@implementation ImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    PFFile *imageFile = [self.message objectForKey:@"file"];
    NSURL *imageFileUrl = [NSURL URLWithString:imageFile.url];
    NSData *imageData = [NSData dataWithContentsOfURL:imageFileUrl];
    self.imageView.image = [UIImage imageWithData:imageData];
    
    NSString *senderName = [self.message objectForKey:@"senderName"];
    self.navigationItem.title = [NSString stringWithFormat:@"Sent from %@", senderName];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    if ([self respondsToSelector:@selector(timeout)]) {
        [NSTimer scheduledTimerWithTimeInterval:10 target:self selector:@selector(timeout) userInfo:nil repeats:NO];
    } else {
        NSLog(@"Error: selector missing!");
    }
    
}

#pragma mark - Helper method

- (void)timeout {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
