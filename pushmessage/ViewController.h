//
//  ViewController.h
//  pushmessage
//
//  Created by 諸原聖 on 2014/05/28.
//  Copyright (c) 2014年 project2_kyouiku. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UITextField *namefield;
@property (weak, nonatomic) IBOutlet UILabel *message;
@property (weak, nonatomic) IBOutlet UITextField *messagefield;
- (IBAction)sendbutton:(id)sender;
//- (IBAction)sendbutton:(id)sender;

@end
