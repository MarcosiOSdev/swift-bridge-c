//
//  C.c
//  swift-bridge-c
//
//  Created by Marcos Felipe Souza Pinto on 07/05/24.
//

#include "C.h"
#include <stdio.h>
void hello_c(const char * name) {
    printf("Hello %s in C\n", name);
}
