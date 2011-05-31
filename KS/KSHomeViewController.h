//
//  KSHomeViewController.h
//  Typr
//
//  Created by Antonio Perez on 11-05-20.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TyprViewController.h"
#import "KSHowToViewController.h"
#import "KSOptionsViewController.h"
#import "KSLeaderboardViewController.h"
#import "KSStatsViewController.h"

@interface KSHomeViewController : UIViewController {
    IBOutlet UIButton *playButton;
    IBOutlet UIButton *howToPlayButton;
    IBOutlet UIButton *leaderboardButton;
    IBOutlet UIButton *optionsButton;
    IBOutlet UIButton *statsButton;
    
    TyprViewController *typrViewController;
    KSHowToViewController  *howtoViewController;
    KSOptionsViewController *optionsViewController;
    KSStatsViewController  *statsViewController;
    KSLeaderboardViewController  *leaderboardViewController;
        
}

@property (nonatomic, retain) IBOutlet UIButton *playButton;
@property (nonatomic, retain) IBOutlet UIButton *howToPlayButton;
@property (nonatomic, retain) IBOutlet UIButton *leaderboardButton;
@property (nonatomic, retain) IBOutlet UIButton *optionsButton;
@property (nonatomic, retain) IBOutlet UIButton *statsButton;

@property (nonatomic, retain) IBOutlet TyprViewController *typrViewController;
@property (nonatomic, retain) IBOutlet KSHowToViewController *howtoViewController;
@property (nonatomic, retain) IBOutlet KSOptionsViewController *optionsViewController;
@property (nonatomic, retain) IBOutlet KSStatsViewController *statsViewController;
@property (nonatomic, retain) IBOutlet KSLeaderboardViewController *leaderboardViewController;

- (IBAction)homeButtonClicked:(id)sender;

@end
