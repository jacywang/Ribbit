//
//  SignupViewController.h
//  Ribbit
//
//  Created by JIAN WANG on 5/26/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignupViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

- (IBAction)signupButtonPressed:(UIButton *)sender;
- (IBAction)dismissButtonPressed:(UIButton *)sender;

@end
