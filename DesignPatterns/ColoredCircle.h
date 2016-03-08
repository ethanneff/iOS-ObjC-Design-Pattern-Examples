//
//  ColoredCircle.h
//  DesignPatterns
//
//  Created by Ethan Neff on 2/9/16.
//  Copyright © 2016 Ethan Neff. All rights reserved.
//

#ifndef ColoredCircle_h
#define ColoredCircle_h
#import "Circle.h"


#endif /* ColoredCircle_h */
@interface ColoredCircle : Circle
@property (nonatomic,strong) NSString *color;

-(instancetype) initWithDiameter:(float)d andColor:(NSString *)d;
+(ColoredCircle *) star;

@end
