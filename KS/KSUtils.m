//
//  KSUtils.m
//  Typr
//
//  Created by Antonio Perez on 11-05-26.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "KSUtils.h"


@implementation KSUtils


- (id) getDefaultForKey:(NSString *)key{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    return [defaults objectForKey:key];
}

- (void) setDefault:(id)obj ForKey:(NSString *)key{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:obj forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


@end
