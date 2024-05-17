//
//  C.h
//  swift-bridge-c
//
//  Created by Marcos Felipe Souza Pinto on 07/05/24.
//

#ifndef C_h
#define C_h

#include <stdio.h>

#ifdef __cplusplus
extern "C" {
#endif
    void hello_c(const char * name);

#ifdef __cplusplus
}
#endif

#endif /* C_h */
