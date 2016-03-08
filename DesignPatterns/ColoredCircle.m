//
//  ColoredCircle.m
//  DesignPatterns
//
//  Created by Ethan Neff on 2/9/16.
//  Copyright © 2016 Ethan Neff. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ColoredCircle.h"

@interface ColoredCircle ()
@property (nonatomic,assign) float diameter;
@end

@implementation ColoredCircle

// init
-(instancetype) init {
  return [self initWithDiameter:6.0 andColor:@"blue"];
}

// designated init
-(instancetype) initWithDiameter:(float)d andColor:(NSString *)c {
  self = [super initWithDiameter:d];
  if (self) {
    self.color = c;
  }
  return self;
}


// class factory method
+(ColoredCircle *) star {
  ColoredCircle *s = [[ColoredCircle alloc] initWithDiameter:1.0 andColor:@"white"];
  return s;
}


@end