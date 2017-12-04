#import "frac.h"

@implementation Fraction
-(void) print {
    NSLog(@"%i/%i (%g)", _numerator, _denominator, [self asDouble]);
}
-(double) asDouble {
    if (_denominator == 0) return NAN;
    return (double)_numerator/_denominator;
}
@end
