//
//  KSHomeViewController.m
//  Typr
//
//  Created by Antonio Perez on 11-05-20.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "KSHomeViewController.h"


@implementation KSHomeViewController

@synthesize levelerViewController,optionsViewController,statsViewController,leaderboardViewController,howtoViewController, playButton, howToPlayButton, leaderboardButton, optionsButton, statsButton;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        self = [super initWithNibName:@"KSHomeViewController-iPad" bundle:nibBundleOrNil];
    } else {
        self = [super initWithNibName:@"KSHomeViewController" bundle:nibBundleOrNil];
    }

    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    self.levelerViewController=nil;
    self.howtoViewController=nil;
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.playButton= nil;
    self.howToPlayButton= nil;
    self.leaderboardButton= nil;
    self.optionsButton= nil;
    self.statsButton= nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}



- (IBAction)homeButtonClicked:(id)sender {
   //

    if(sender == playButton){
        [self.navigationController pushViewController:levelerViewController animated:YES];
    }
    if(sender == howToPlayButton){
        [self.navigationController pushViewController:howtoViewController animated:YES];
    }
    if(sender == leaderboardButton){
        [self.navigationController pushViewController:leaderboardViewController animated:YES];
    }
    if(sender == optionsButton){
        [self.navigationController pushViewController:optionsViewController animated:YES];
    }
    if(sender == statsButton){
        [self.navigationController pushViewController:statsViewController animated:YES];
    }
}


@end
