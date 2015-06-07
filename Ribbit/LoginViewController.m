//
//  LoginViewController.m
//  Ribbit
//
//  Created by JIAN WANG on 5/26/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "LoginViewController.h"
#import <Parse/Parse.h>

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.navigationController.navigationBar setHidden:YES];
}

- (IBAction)loginButtonPressed:(UIButton *)sender {
    
    NSString *username = self.usernameField.text;
    NSString *password = self.passwordField.text;
    
    if (username.length == 0 || password.length == 0) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Oops" message:@"The username and password cannot be empty." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
    } else {
        [PFUser logInWithUsernameInBackground:username password:password block:^(PFUser *user, NSError *error) {
            if (error) {
                UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Sorry!" message:[error.userInfo objectForKey:@"error"] delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
                [alertView show];
            } else {
                [self.navigationController popToRootViewControllerAnimated:YES];
            }

        }];
        
    }
    
}
@end
