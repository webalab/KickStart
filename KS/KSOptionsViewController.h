//
//  KSOptionsViewController.h
//  Typr
//
//  Created by Antonio Perez on 11-05-25.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KSUtils.h"

@interface KSOptionsViewController : UIViewController {
    IBOutlet UISwitch * autoCorrectSetting;
    KSUtils *ksUtils;
}


- (IBAction) backButtonClicked:(id)sender;
- (IBAction) dataChanged:(id)sender;


@end
