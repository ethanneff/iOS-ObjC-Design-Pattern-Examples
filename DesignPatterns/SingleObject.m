//
//  SingleObject.m
//  DesignPatterns
//
//  Created by Ethan Neff on 2/9/16.
//  Copyright © 2016 Ethan Neff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SingleObject.h"

@interface SingleObject()
@end
@implementation SingleObject

+(id) alloc {
  NSLog(@"use shared instance please");
  return nil;
}

+(id) hiddenAlloc {
  return [super alloc];
}

+(SingleObject *) sharedInstance {
  static SingleObject *ourSharedInstance = nil;
  
  // first run
  if (ourSharedInstance == nil) {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
      ourSharedInstance = [[SingleObject hiddenAlloc] init];
    });
  }
  return ourSharedInstance;
}

@end