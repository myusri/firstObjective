#import "frac.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *f1 = [Fraction new];
        Fraction *f2 = [Fraction new];
        [f1 setNumerator: 3];
        [f1 setDenominator: 4];
        [f2 setNumerator: 1];
        [f2 setDenominator: 4];
        NSLog(@"fraction 1: ");
        [f1 print];
        NSLog(@"fraction 2: ");
        [f2 print];
    }
    return 0;
}
