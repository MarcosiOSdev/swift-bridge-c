//
//  CPP.hpp
//  swift-bridge-c
//
//  Created by Marcos Felipe Souza Pinto on 07/05/24.
//

#ifndef CPP_hpp
#define CPP_hpp

#include <stdio.h>
#pragma once
#include <string>
class CPP {
public:
    void hello_cpp(const std::string& name);
};

std::vector<std::string> searchItemsInList(const std::vector<std::string>& list, const std::string& item);

#endif /* CPP_hpp */
