//
//  ViewController.swift
//  swift-bridge-c
//
//  Created by Marcos Felipe Souza Pinto on 07/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // Do any additional setup after loading the view.
        
        let lista = ["maça", "banana", "banana"]
        let alvo = "banana"
        
        let c_lista = lista.map { strdup($0) }
        let c_alvo = strdup(alvo)
        
        defer {
            c_lista.forEach { free($0) }
            free(c_alvo)
        }
        
        callCpp()
        
        // Invoke C
        let world = strdup("world")
        hello_c(world)        

        // Can't Invoke C++ without a wrapper
        // CPP().hello_cpp("World".cStringUsingEncoding(NSUTF8StringEncoding))
        
        // Invoke C++ through Objective-C
        CPP_Wrapper().hello_cpp_wrapped("World")
                
        // Invoke Objective-C
        Objective_C().hello_objectiveC("World")

        // Invoke Objective-C++
        Objective_CPP().hello_objectiveCpp("World")
    }
    
    func callCpp() {
        let resultArray = CPP_Wrapper().search(inArray_cpp_wrapped: ["banana", "apple", "banana"], withSubstring: "banana")
        print(resultArray ?? ["no_result"])
    }


}



//public class FuncoesWrapper {
//    public static func encontrarStringNaLista(lista: [String], alvo: String) -> [String] {
//        let c_lista = lista.map { strdup($0) }
//        let c_alvo = strdup(alvo)
//        
//        defer {
//            c_lista.forEach { free($0) }
//            free(c_alvo)
//        }
//        
//        
//        
//        let resultados = encontrarStringNaLista_wrapper(c_lista, Int32(lista.count), c_alvo)
//        
//        var resultArray = [String]()
//        for i in 0..<resultados.count {
//            resultArray.append(String(cString: resultados[i]!))
//        }
//        
//        return resultArray
//    }
//}
