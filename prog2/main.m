#import "frac.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
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
    }
    return 0;
}
