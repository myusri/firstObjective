#import "Complex.h"

@implementation Complex
-(instancetype) initReal: (double) r andImag: (double) i {
    self = [super init];
    if (self) {
        [self setReal: r andImag: i];
    }
    return self;
}
-(instancetype) init {
    return [self initReal: 0 andImag: 0];
}
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
