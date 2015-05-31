//
//  CameraTableViewController.h
//  Ribbit
//
//  Created by JIAN WANG on 5/30/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface CameraTableViewController : UITableViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (nonatomic, strong) UIImagePickerController *imagePicker;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *videoFilePath;
@property (nonatomic, strong) NSArray *friends;
@property (nonatomic, strong) PFRelation *friendsRelation;
@property (nonatomic, strong) NSMutableArray *recipients;

- (IBAction)cancelButtonPressed:(UIBarButtonItem *)sender;
- (IBAction)sendButtonPressed:(UIBarButtonItem *)sender;
- (void)uploadMessage;
- (UIImage *)resizeImage:(UIImage *)image toWidth:(float)width andHeight:(float)height;

@end
