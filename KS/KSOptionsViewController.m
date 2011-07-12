//
//  KSOptionsViewController.m
//  Typr
//
//  Created by Antonio Perez on 11-05-25.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "KSOptionsViewController.h"


@implementation KSOptionsViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        self = [super initWithNibName:@"KSOptionsViewController-iPad" bundle:nibBundleOrNil];
    } else {
        self = [super initWithNibName:@"KSOptionsViewController" bundle:nibBundleOrNil];
    }
    
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)dealloc
{
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
    ksUtils = [[KSUtils alloc] init];
    [autoCorrectSetting setOn:[[ksUtils getDefaultForKey:@"autoCorrectString"] boolValue]];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    [ksUtils release];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}



- (IBAction) backButtonClicked:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction) dataChanged:(id)sender{
    [ksUtils setDefault:[NSNumber numberWithBool:[autoCorrectSetting isOn]] ForKey:@"autoCorrectString"];
}












@end
