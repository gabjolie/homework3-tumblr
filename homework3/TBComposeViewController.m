//
//  TBComposeViewController.m
//  homework3
//
//  Created by Gabriele Angeline on 3/23/14.
//  Copyright (c) 2014 Gabriele Angeline. All rights reserved.
//

#import "TBComposeViewController.h"

@interface TBComposeViewController ()

- (IBAction)onNvmButton:(id)sender;

@end

@implementation TBComposeViewController

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

- (IBAction)onNvmButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
