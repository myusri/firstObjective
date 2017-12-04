#import "frac.h"

@implementation Fraction
-(void) print {
    NSLog(@"%i/%i (%g)", _numerator, _denominator, [self asDouble]);
}
-(double) asDouble {
    if (_denominator == 0) return NAN;
    return (double)_numerator/_denominator;
}
-(void) setTo: (int) n over: (int) d {
    _numerator = n;
    _denominator = d;
}
-(Fraction *) add: (Fraction *) f {
    Fraction *r = [Fraction new];
    r.numerator = _numerator * f.denominator + f.numerator * _denominator;
    r.denominator = _denominator * f.denominator;
    return r;
}
-(void) reduce {
    int u = _numerator;
    int v = _denominator;
    int r;
    while (v != 0) {
        r = u % v;
        u = v;
        v = r;
    }
    _numerator /= u;
    _denominator /= u;
}
@end
