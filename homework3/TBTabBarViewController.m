//
//  TBTabBarViewController.m
//  homework3
//
//  Created by Gabriele Angeline on 3/22/14.
//  Copyright (c) 2014 Gabriele Angeline. All rights reserved.
//

#import "TBTabBarViewController.h"
#import "TBHomeViewController.h"
#import "TBSearchViewController.h"
#import "TBAccountViewController.h"
#import "TBTrendingViewController.h"

@interface TBTabBarViewController ()

@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (nonatomic, strong) TBHomeViewController *homeViewController;
@property (nonatomic, strong) TBSearchViewController *searchViewController;
@property (nonatomic, strong) TBAccountViewController *accountViewController;
@property (nonatomic, strong) TBTrendingViewController *trendingViewController;

@property (weak, nonatomic) IBOutlet UIButton *homeButton;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UIButton *accountButton;
@property (weak, nonatomic) IBOutlet UIButton *trendingButton;

@property (weak, nonatomic) IBOutlet UIView *exploreView;

- (IBAction)onHomeButton:(id)sender;
- (IBAction)onSearchButton:(id)sender;
- (IBAction)onAccountButton:(id)sender;
- (IBAction)onTrendingButton:(id)sender;

@end

@implementation TBTabBarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        self.homeViewController = [[TBHomeViewController alloc] init];
        self.searchViewController = [[TBSearchViewController alloc] init];
        self.accountViewController = [[TBAccountViewController alloc] init];
        self.trendingViewController = [[TBTrendingViewController alloc] init];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.homeViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.homeViewController.view];
    self.homeButton.selected = YES;
    
    self.searchViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.searchViewController.view];
    
    self.accountViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.accountViewController.view];
    
    self.trendingViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.trendingViewController.view];
    
    [self.contentView bringSubviewToFront:self.homeViewController.view];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onHomeButton:(id)sender {
    [self.contentView addSubview:self.homeViewController.view];
    
    self.homeButton.selected = YES;
    self.searchButton.selected = NO;
    self.accountButton.selected = NO;
    self.trendingButton.selected = NO;
    
    [self.contentView bringSubviewToFront:self.exploreView];

    float currentY = self.exploreView.frame.origin.y;
    
    float currentX = self.exploreView.frame.origin.x;
    
    [UIView animateWithDuration:1 animations:^{
        self.exploreView.frame = CGRectMake(currentX, currentY-10, 170, 54);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            self.exploreView.frame = CGRectMake(currentX, currentY, 170, 54);
        } completion:nil];
    }];
}

- (IBAction)onSearchButton:(id)sender {
    [self.contentView addSubview:self.searchViewController.view];
    
    self.searchButton.selected = YES;
    self.homeButton.selected = NO;
    self.accountButton.selected = NO;
    self.trendingButton.selected = NO;
}

- (IBAction)onAccountButton:(id)sender {
    [self.contentView addSubview:self.accountViewController.view];
    
    self.accountButton.selected = YES;
    self.homeButton.selected = NO;
    self.searchButton.selected = NO;
    self.trendingButton.selected = NO;
    
    [self.contentView bringSubviewToFront:self.exploreView];
    
    [self.contentView bringSubviewToFront:self.exploreView];
    
    float currentY = self.exploreView.frame.origin.y;
    
    float currentX = self.exploreView.frame.origin.x;
    
    [UIView animateWithDuration:1 animations:^{
        self.exploreView.frame = CGRectMake(currentX, currentY-10, 170, 54);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            self.exploreView.frame = CGRectMake(currentX, currentY, 170, 54);
        } completion:nil];
    }];

}

- (IBAction)onTrendingButton:(id)sender {
    [self.contentView addSubview:self.trendingViewController.view];
    
    self.trendingButton.selected = YES;
    self.homeButton.selected = NO;
    self.searchButton.selected = NO;
    self.accountButton.selected = NO;
    
    [self.contentView bringSubviewToFront:self.exploreView];
    
    [self.contentView bringSubviewToFront:self.exploreView];
    
    float currentY = self.exploreView.frame.origin.y;
    
    float currentX = self.exploreView.frame.origin.x;
    
    [UIView animateWithDuration:1 animations:^{
        self.exploreView.frame = CGRectMake(currentX, currentY-10, 170, 54);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            self.exploreView.frame = CGRectMake(currentX, currentY, 170, 54);
        } completion:nil];
    }];

}

@end
