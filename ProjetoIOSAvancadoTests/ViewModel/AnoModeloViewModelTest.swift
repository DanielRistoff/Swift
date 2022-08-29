//
//  AnoModeloViewModelTest.swift
//  ProjetoIOSAvancadoTests
//
//  Created by Mac on 28/08/22.
//

import XCTest
@testable import ProjetoIOSAvancado

class AnoModeloViewModelTest: XCTestCase {
        
    func testAnoModeloViewModel() throws {
        let model = ListaModeloAnoApiMock()
        let viewModel = AnoModeloViewModel(listaModeloApi: model, viewDelegate: fipeControllerDelegate.self as! FipeControllerDelegate)
        
        viewModel.getAnoModelos()
        
        XCTAssert(model.didCalledGetMoviesTimes == 1)
    }
}

class fipeControllerDelegate: FipeControllerDelegate {

    var isUpdateCalled = false
    var isUpdateFipeSelecionadoCalled = false

    func update(){
        isUpdateCalled = true
    }
    func updateFipeSelecionado(){
        isUpdateFipeSelecionadoCalled = true
    }
}
