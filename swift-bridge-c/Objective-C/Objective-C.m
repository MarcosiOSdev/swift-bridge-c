//
//  Objective-C.m
//  swift-bridge-c
//
//  Created by Marcos Felipe Souza Pinto on 07/05/24.
//

#import <Foundation/Foundation.h>
#import "Objective-C.h"
@implementation Objective_C
- (void)hello_objectiveC:(NSString*)name {
    printf("Hello %s in Objective-C\n", [name cStringUsingEncoding:NSUTF8StringEncoding]);
}
@end
