#import <Foundation/Foundation.h>

@interface Complex : NSObject
@property double real, imag;
-(instancetype) init;
-(instancetype) initReal: (double) r andImag: (double) i;
-(void) print;
-(void) setReal: (double) r andImag: (double) i;
-(Complex *) add: (Complex *) c;
@end
