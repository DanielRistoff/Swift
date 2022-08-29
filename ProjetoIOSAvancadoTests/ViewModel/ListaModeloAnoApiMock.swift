//
//  ObterFipeApiMock.swift
//  ProjetoIOSAvancadoTests
//
//  Created by Mac on 28/08/22.
//

import Foundation
@testable import ProjetoIOSAvancado

class ListaModeloAnoApiMock: ListaModeloAnoApi {
    var didCalledGetMoviesTimes = 0
    
    override func getAnoModelos(completion: @escaping (Data?, Error?) -> Void) {
        didCalledGetMoviesTimes += 1
    }
}
