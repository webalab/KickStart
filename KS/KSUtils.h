//
//  KSUtils.h
//  Typr
//
//  Created by Antonio Perez on 11-05-26.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface KSUtils : NSObject {
    
}


- (id) getDefaultForKey:(NSString *)key;
- (void) setDefault:(id)obj ForKey:(NSString *)key;


@end
