#import "fraction.h"
#import "complex.h"

static Fraction *testFraction(void) {
    Fraction *f1 = [Fraction new];
    Fraction *f2 = [Fraction new];
    [f1 setTo: 3 over: 4];
    [f2 setTo: 1 over: 6];
    NSLog(@"fraction 1: ");
    [f1 print];
    NSLog(@"fraction 2: ");
    [f2 print];
    Fraction *f3 = [f1 add: f2];
    [f3 reduce];
    NSLog(@"fraction 1 + fraction 2: ");
    [f3 print];
    return f3;
}

static Complex *testComplex(void) {
    Complex *c1 = [Complex new];
    Complex *c2 = [Complex new];
    [c1 setReal: 1 andImag: 2];
    NSLog(@"complex 1:");
    [c1 print];
    [c2 setReal: 3 andImag: -1.5];
    NSLog(@"complex 2:");
    [c2 print];
    Complex *c3 = [c1 add: c2];
    NSLog(@"complex 1 + complex 3: ");
    [c3 print];
    return c3;
}

static id twice(id val) {
    val = [val add: val];
    SEL reduce = @selector(reduce);
    if ([val respondsToSelector: reduce]) {
        [val reduce];
    }
    NSLog(@"val + val:");
    [val print];
    return val;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id val = testComplex();
        twice(val);
        val = testFraction();
        twice(val);
    }
    return 0;
}
