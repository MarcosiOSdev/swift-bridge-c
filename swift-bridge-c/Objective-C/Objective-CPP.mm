//
//  Objective-CPP.m
//  swift-bridge-c
//
//  Created by Marcos Felipe Souza Pinto on 07/05/24.
//

#import <Foundation/Foundation.h>
#include <iostream>
#import "Objective-CPP.h"
using namespace std;
@implementation Objective_CPP
- (void)hello_objectiveCpp:(NSString *)name {
    cout << "Hello " << [name cStringUsingEncoding:NSUTF8StringEncoding] << " in Objective-C++\n";
}
@end
