//
//  KVCobject.h
//  DesignPatterns
//
//  Created by Ethan Neff on 2/9/16.
//  Copyright © 2016 Ethan Neff. All rights reserved.
//

#ifndef KVCobject_h
#define KVCobject_h


#endif /* KVCobject_h */

@interface KVCobject : NSObject {
  // instance variable
  NSString *theString;
}

//@property (nonatomic,strong) NSString *theString;
@property (nonatomic,strong) NSString *name;

// method
-(id) valueForUndefinedKey:(NSString *)key;

@end