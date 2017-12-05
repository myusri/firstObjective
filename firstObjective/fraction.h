#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator, denominator;
-(instancetype) init;
-(instancetype) initTo: (int) n over: (int) d;
-(void) print;
-(double) asDouble;
-(void) setTo: (int) n over: (int) d;
-(Fraction *) add: (Fraction *) f;
-(void) reduce;
@end
