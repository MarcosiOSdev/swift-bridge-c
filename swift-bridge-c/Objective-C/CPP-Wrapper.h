//
//  CPP-Wrapper.h
//  swift-bridge-c
//
//  Created by Marcos Felipe Souza Pinto on 07/05/24.
//

#ifndef CPP_Wrapper_h
#define CPP_Wrapper_h

#import <Foundation/Foundation.h>
@interface CPP_Wrapper : NSObject
- (void)hello_cpp_wrapped:(NSString *)name;
- (NSArray<NSString *> *)searchInArray_cpp_wrapped:(NSArray<NSString *> *)list withSubstring:(NSString *) substring;
@end

#endif /* CPP_Wrapper_h */
