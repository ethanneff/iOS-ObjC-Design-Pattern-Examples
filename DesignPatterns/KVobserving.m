//
//  KVobserving.m
//  DesignPatterns
//
//  Created by Ethan Neff on 2/9/16.
//  Copyright © 2016 Ethan Neff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KVobserving.h"

@implementation ExampleObj

-(void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object
                        change:(NSDictionary *)change context:(void *)context {
  NSLog(@"%@ value changed. Change dict: %@", self.ident, change);
}
@end

