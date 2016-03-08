//
//  Circle.m
//  DesignPatterns
//
//  Created by Ethan Neff on 2/9/16.
//  Copyright © 2016 Ethan Neff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Circle.h"

@interface Circle ()
@property (nonatomic,assign) float diameter;
@end

@implementation Circle

// instance type for init
-(instancetype) initWithDiameter:(float)d {
  // super init can relocate the init method
  self = [super init];
  // verify non-null self
  if (self) {
    self.diameter = d;
  }
  
  return self;
}

// designated init funnels to primary init
-(instancetype) init {
  return [self initWithDiameter:3.0];
}

@end

