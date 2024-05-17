//
//  CPP-Wrapper.m
//  swift-bridge-c
//
//  Created by Marcos Felipe Souza Pinto on 07/05/24.
//

#import <Foundation/Foundation.h>
#import "CPP-Wrapper.h"
#include "CPP.hpp"

#include <vector>
#include <string>


@implementation CPP_Wrapper
- (void)hello_cpp_wrapped:(NSString *)name {
    CPP cpp;
    cpp.hello_cpp([name cStringUsingEncoding:NSUTF8StringEncoding]);
}

- (NSArray<NSString *> *)searchInArray_cpp_wrapped:(NSArray<NSString *> *)list withSubstring:(NSString *) substring {
    
    std::vector<std::string> vector;
    for (NSString *str in list) {
        vector.push_back([str UTF8String]);
    }
    
    
    std::vector<std::string> vectorResult = searchItemsInList(vector, [substring cStringUsingEncoding:NSUTF8StringEncoding]);
    
    NSMutableArray<NSString *> *array = [NSMutableArray array];
    for (const std::string &str : vectorResult) {
        [array addObject:[NSString stringWithUTF8String:str.c_str()]];
    }
    return [array copy];
    
}

@end
