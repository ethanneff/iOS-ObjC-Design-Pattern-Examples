//
//  KVCobject.m
//  DesignPatterns
//
//  Created by Ethan Neff on 2/9/16.
//  Copyright © 2016 Ethan Neff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KVCobject.h"

@interface KVCobject()
@end

@implementation KVCobject

-(instancetype) init {
  self = [super init];
  if (self) {
    // instance property (trumps all)
//    self.theString = @"fourth value";
    // instance variable
    theString = @"first value";
  }
  return self;
}


// overshadowing the instance variable
-(NSString *) _theString {
  return @"second value";
}

-(NSString *) _getTheString {
  return @"third value";
}


-(id) valueForUndefinedKey:(NSString *)key {
  // catch keys with no value
  NSLog(@"we have no key for %@", key);
  return @"Default value";
}

@end
