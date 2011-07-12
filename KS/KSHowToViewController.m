//
//  KSHowToViewController.m
//  Typr
//
//  Created by Antonio Perez on 11-05-25.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "KSHowToViewController.h"


@implementation KSHowToViewController

@synthesize imageView,arr;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        self = [super initWithNibName:@"KSHowToViewController-iPad" bundle:nibBundleOrNil];
    } else {
        self = [super initWithNibName:@"KSHowToViewController" bundle:nibBundleOrNil];
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
    // Do any additional setup after loading the view from its nib.
    slideIndex = 0;
    arr = [[NSArray alloc] initWithObjects:
                    @"howTo1.png",@"howTo2.png", @"howTo3.png", @"howTo4.png",@"howTo5.png", nil];
    [imageView setImage:[UIImage imageNamed:[arr objectAtIndex:slideIndex]]];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    UITouch *touch = [touches anyObject];
    slideIndex=slideIndex+1;
    if([arr count] <= slideIndex){
        slideIndex=0;
    }
    [imageView setImage:[UIImage imageNamed:[arr objectAtIndex:slideIndex]]];
//    NSLog(@"-> %d <-",[arr count]);
//    NSLog(@"touching");
//    if( [[touch view] isKindOfClass:UIImageView]){
//        NSLog(@"touch imageView");
//    }
}

- (IBAction) backButtonClicked:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}


@end
