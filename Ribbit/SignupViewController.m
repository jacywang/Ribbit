//
//  SignupViewController.m
//  Ribbit
//
//  Created by JIAN WANG on 5/26/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "SignupViewController.h"
#import <Parse/Parse.h>

@interface SignupViewController ()

@end

@implementation SignupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)signupButtonPressed:(UIButton *)sender {
    NSString *username = self.usernameTextField.text;
    NSString *password = self.passwordTextField.text;
    NSString *email = self.emailTextField.text;
    
    if (username.length == 0 || password.length == 0 || email.length == 0) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Oops" message:@"The username, password and email field cannot be empty." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
    } else {
        PFUser *newuser = [PFUser user];
        newuser.email = email;
        newuser.username = username;
        newuser.password = password;
        
        [newuser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
            if (error) {
                UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Sorry!" message:[error.userInfo objectForKey:@"error"] delegate:nil cancelButtonTitle:nil otherButtonTitles:nil];
                [alertView show];
            } else {
                [self.navigationController popToRootViewControllerAnimated:YES];
            }
        }];
    }
    
    
}
@end
