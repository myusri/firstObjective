#import "frac.h"

@implementation Fraction
{
    int numerator;
    int denominator;
}
-(void) print {
    NSLog(@"%i/%i (%g)", numerator, denominator, [self asDouble]);
}
-(void) setNumerator: (int) n {
    numerator = n;
}
-(void) setDenominator: (int) d {
    denominator = d;
}
-(int) denominator {
    return denominator;
}
-(int) numerator {
    return numerator;
}
-(double) asDouble {
    if (denominator == 0) return NAN;
    return (double)numerator/denominator;
}
@end
