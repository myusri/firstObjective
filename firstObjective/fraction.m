#import "fraction.h"

@implementation Fraction
-(instancetype) initTo: (int) n over: (int) d {
    self = [super init];
    if (self) {
        [self setTo: n over: d];
    }
    return self;
}
-(instancetype) init {
    return [self initTo: 0 over: 1];
}
-(void) print {
    [self reduce];
    int i = _numerator / _denominator;
    int r = _numerator % _denominator;
    if (i) NSLog(@"%i %i/%i (%g)", i, r, _denominator, [self asDouble]);
    else   NSLog(@"%i/%i (%g)", _numerator, _denominator, [self asDouble]);
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
