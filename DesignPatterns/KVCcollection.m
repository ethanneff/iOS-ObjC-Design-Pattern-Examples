//
//  KVCcollection.m
//  DesignPatterns
//
//  Created by Ethan Neff on 2/9/16.
//  Copyright © 2016 Ethan Neff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KVCcollection.h"

@implementation PetInfo
@end

@implementation WorkerObj
-(instancetype) init {
  self = [super init];
  if (self) {
    self.pet = [[PetInfo alloc] init];
  }
  return self;
}
@end