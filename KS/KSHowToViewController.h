//
//  KSHowToViewController.h
//  Typr
//
//  Created by Antonio Perez on 11-05-25.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface KSHowToViewController : UIViewController {
    IBOutlet UIImageView *imageView;
    NSArray *arr;
    int slideIndex;
}

- (IBAction) backButtonClicked:(id)sender;

@property (nonatomic, retain) IBOutlet UIImageView *imageView;
@property (nonatomic, retain) NSArray *arr;

@end
