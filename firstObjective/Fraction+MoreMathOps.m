#import "Fraction+MoreMathOps.h"

@implementation Fraction (MoreMathOps)
-(Fraction *) sub: (Fraction *) f {
    Fraction * t = [[Fraction alloc] initTo: -f.numerator over: f.denominator];
    return [self add: t];
}
-(Fraction *) mul: (Fraction *) f {
    Fraction * r = [Fraction new];
    r.numerator = self.numerator * f.numerator;
    r.denominator = self.denominator * f.denominator;
    return r;
}
-(Fraction *) div: (Fraction *) f {
    Fraction * r = [Fraction new];
    r.numerator = self.numerator * f.denominator;
    r.denominator = self.denominator * f.numerator;
    return r;
}
@end
