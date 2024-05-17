//
//  CPP.cpp
//  swift-bridge-c
//
//  Created by Marcos Felipe Souza Pinto on 07/05/24.
//

#include "CPP.hpp"
#include <iostream>
using namespace std;
void CPP::hello_cpp(const std::string& name) {
    cout << "Hello " << name << " in C++" << endl;
}




// Função para verificar se uma string está presente em uma lista de strings
std::vector<std::string> searchItemsInList(const std::vector<std::string>& list, const std::string& item) {
    std::vector<std::string> vectorResult;

    // Iterar sobre a lista de strings
    for (const auto& str : list) {
        // Se a string atual for igual ao alvo, adicionar ao vetor de resultados
        if (str == item) {
            vectorResult.push_back(str);
        }
    }

    return vectorResult;
}
