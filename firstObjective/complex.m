#import "complex.h"

@implementation Complex
-(void) print {
    NSLog(@"%g + %gi", _real, _imag);
}
-(void) setReal: (double) r andImag: (double) i {
    _real = r;
    _imag = i;
}
-(Complex *) add: (Complex *) c {
    Complex *ret = [Complex new];
    ret.real = c.real + _real;
    ret.imag = c.imag + _imag;
    return ret;
}
@end
