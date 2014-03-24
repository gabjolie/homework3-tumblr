//
//  TBLoginViewController.m
//  homework3
//
//  Created by Gabriele Angeline on 3/23/14.
//  Copyright (c) 2014 Gabriele Angeline. All rights reserved.
//

#import "TBLoginViewController.h"

@interface TBLoginViewController ()

- (IBAction)onCancelButton:(id)sender;

@end

@implementation TBLoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onCancelButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
