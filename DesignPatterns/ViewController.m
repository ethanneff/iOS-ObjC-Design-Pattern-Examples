//
//  ViewController.m
//  DesignPatterns
//
//  Created by Ethan Neff on 2/9/16.
//  Copyright © 2016 Ethan Neff. All rights reserved.
//

#import "ViewController.h"
#import "Circle.h"
#import "ColoredCircle.h"
#import "SingleObject.h"
#import "KVCobject.h"
#import "KVCcollection.h"
#import "KVobserving.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  ////////////////////////////////////
  // two stage data creation
  ////////////////////////////////////
  
  Circle *c = [[Circle alloc] init];
  NSLog(@"c =  %@", c);
  
  ColoredCircle *b = [ColoredCircle star];
  NSLog(@"b =  %@", b);
  printf("\n");
  
  
  
  ////////////////////////////////////
  // singleton
  ////////////////////////////////////
  
  SingleObject *s1 = [SingleObject sharedInstance];
  NSLog(@"s1 =  %@", s1);
  printf("\n");
  
  
  
  ////////////////////////////////////
  // kvc object, collection, observer
  ////////////////////////////////////
  
  // object
  KVCobject *ko = [[KVCobject alloc] init];
  NSLog(@"the string KVC value = %@", [ko valueForKey:@"theString"]);
  NSLog(@"the string KVC value = %@", [ko valueForKey:@"theNumber"]);
  
  // collection
  WorkerObj *w1 = [[WorkerObj alloc] init];
  w1.name = @"Frank";
  w1.salary = 1000;
  w1.pet.petname = @"Wiggles"; // pet worm
  w1.pet.age = 1;
  
  WorkerObj *w2 = [[WorkerObj alloc] init];
  w2.name = @"Annie";
  w2.salary = 2000;
  w2.pet.petname = @"Fluffy"; // pomeranian
  w2.pet.age = 5;
  
  WorkerObj *w3 = [[WorkerObj alloc] init];
  w3.name = @"Wally";
  w3.salary = 150;
  w3.pet.petname = @"Slithers"; // pet snake
  w3.pet.age = 3;
  
  // example 1
  NSLog(@"Frank's pet: %@",[w1 valueForKeyPath:@"pet.petname"]);
  NSLog(@"Frank's pet's age %@",[w1 valueForKeyPath:@"pet.age"]);
  
  // example 2
  [w1 setValue:@12 forKeyPath:@"pet.age"];
  NSLog(@"Frank's pet's age %@",[w1 valueForKeyPath:@"pet.age"]);
  
  // example 3
  NSArray *employees = @[w1, w2, w3];
  NSLog(@"employee names: %@",[employees valueForKey:@"name"]);
  // example 4
  NSLog(@"employee pet names: %@",[employees valueForKeyPath:@"pet.petname"]);
  // example 5
  NSLog(@"employee avg salary: %@",[employees valueForKeyPath:@"@avg.salary"]);
  // example 6
  NSLog(@"total payroll: %@",[employees valueForKeyPath:@"@sum.salary"]);
  // example 7
  NSLog(@"maximum pet age: %@",[employees valueForKeyPath:@"@max.pet.age"]);
  
  // observing
  ExampleObj *objA = [[ExampleObj alloc] init];
  objA.someValue = 7;
  objA.ident = @"objA";
  
  ExampleObj *objB = [[ExampleObj alloc] init];
  objB.ident = @"objB";
  
  
  NSKeyValueObservingOptions opts = NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld;  // NSInteger bitmask
  [objA addObserver:objB forKeyPath:@"someValue" options:opts context:NULL];
  sleep(1);
  printf("sleep....\n");
  
  objA.someValue = 15;
  
  sleep(1);
  printf("sleep....\n");
  
  NSLog(@"done");
  [objA removeObserver:objB forKeyPath:@"someValue"]; // show what happens when you comment this out
  printf("\n");
  
  
  
  ////////////////////////////////////
  // notifications
  ////////////////////////////////////
  
  NSNotificationCenter *notifCenter = [NSNotificationCenter defaultCenter];
  [notifCenter addObserverForName:nil object:nil queue:nil usingBlock:^(NSNotification * _Nonnull note) {
    NSLog(@"notification posted: %@",note.name);
  }];
  [[NSNotificationCenter defaultCenter] postNotificationName:@"rawr" object:nil];
  
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
