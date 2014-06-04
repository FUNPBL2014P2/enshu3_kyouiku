//
//  ViewController.m
//  pushmessage
//
//  Created by 諸原聖 on 2014/05/28.
//  Copyright (c) 2014年 project2_kyouiku. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendbutton:(id)sender {
    NSString *urlAsString = @"http://210.226.0.82/webdb/add.php";
    NSString *name = [NSString stringWithFormat:@"?title=%@",_namefield.text];
    urlAsString = [urlAsString stringByAppendingString:name];
    NSString *message = [NSString stringWithFormat:@"&message=%@",_messagefield.text];
    urlAsString = [urlAsString stringByAppendingString:message];
    
    NSURL *url = [NSURL URLWithString:urlAsString];
    
    NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:url];
    [urlRequest setTimeoutInterval:30.0f];
    [urlRequest setHTTPMethod:@"GET"];
    [NSURLConnection sendSynchronousRequest:urlRequest returningResponse:nil error:nil];
}
@end
