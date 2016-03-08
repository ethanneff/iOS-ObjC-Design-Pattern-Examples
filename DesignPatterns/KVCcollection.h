//
//  KVCcollection.h
//  DesignPatterns
//
//  Created by Ethan Neff on 2/9/16.
//  Copyright © 2016 Ethan Neff. All rights reserved.
//

#ifndef KVCcollection_h
#define KVCcollection_h


#endif /* KVCcollection_h */

@interface PetInfo : NSObject
@property (nonatomic,retain) NSString *petname;
@property (assign) int age;
@end

@interface WorkerObj : NSObject
@property (nonatomic,retain) NSString *name;
@property (assign) int salary;
@property (nonatomic,retain) PetInfo *pet;
@end
