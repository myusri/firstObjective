#import <Foundation/Foundation.h>

@interface Complex : NSObject
@property double real, imag;
-(void) print;
-(void) setReal: (double) r andImag: (double) i;
-(Complex *) add: (Complex *) c;
@end
