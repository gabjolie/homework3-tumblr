//
//  TBAccountViewController.m
//  homework3
//
//  Created by Gabriele Angeline on 3/22/14.
//  Copyright (c) 2014 Gabriele Angeline. All rights reserved.
//

#import "TBAccountViewController.h"
#import "TBLoginViewController.h"

@interface TBAccountViewController ()

@property (nonatomic, strong) TBLoginViewController *loginViewController;

- (IBAction)onLogInButton:(id)sender;

@end

@implementation TBAccountViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.loginViewController = [[TBLoginViewController alloc] init];
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

- (IBAction)onLogInButton:(id)sender {
    TBLoginViewController *vc = [[TBLoginViewController alloc] init];
    vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical; // Rises from below
    
    [self presentViewController:vc animated:YES completion:nil];
     
}

@end
