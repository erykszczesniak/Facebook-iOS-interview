#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *test = @[
    [NSNumber numberWithInt:30],
    [NSNumber numberWithInt:20],
    [NSNumber numberWithInt:10],
    [NSNumber numberWithInt:10],
    [NSNumber numberWithInt:0],
    [NSNumber numberWithInt:0],
    [NSNumber numberWithInt:0]
    ];
    
    NSNumber *result = [self numberOfZerosIn:test];
    NSLog(@"%i", [result intValue]);
    
    NSArray *result2 = [self moveZerosToFront:[[NSMutableArray alloc] initWithArray:test]];
    NSLog(@"%@",result2);
    
}
/*
 Given an array of numbers
 - Return the number of zeros in the array
 - Return an array with all zeros moved to the front of the array
 */

- (NSNumber *)numberOfZerosIn:(NSArray<NSNumber *> *)array {
    int count = 0;
    
    for (int x = 0; x<array.count; x++) {
        if ([array[x] intValue] == 0) {
            count++;
        }
    }
    return [NSNumber numberWithInt:count];
}

- (NSArray<NSNumber *> *)moveZerosToFront:(NSMutableArray<NSNumber *> *) array{
    
    // 1 2 3 0 1 0
    // -         -
    NSInteger j = 0;
    for (NSInteger x = array.count-1; x>=0; x--) {
        if ([array[x] intValue] == 0 && x>j ) {
            [array exchangeObjectAtIndex:x withObjectAtIndex:j];
            j++;
        }
    }
    return array;
}


@end
