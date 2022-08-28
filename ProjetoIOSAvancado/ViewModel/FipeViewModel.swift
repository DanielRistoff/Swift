//
//  FipeViewModel.swift
//  ProjetoIOSAvancado
//
//  Created by Mac on 13/08/22.
//

import Foundation

class FipeViewModel {
    private let api: ObterFipeApi
    private let viewDelegate: FipeControllerDelegate
    
    var fipe: Fipe?
    
    init(obterFipeApi: ObterFipeApi, viewDelegate: FipeControllerDelegate) {
        self.api = obterFipeApi
        self.viewDelegate = viewDelegate
    }
    
    func obterFipePorAno(codigo: String) {
        api.getFipePorAno(codigo: codigo) { [weak self] data, error in
            let responseData = try? JSONDecoder().decode(Fipe.self, from: data!)
            self?.fipe = responseData!
            self?.viewDelegate.updateFipeSelecionado()
        }
    }
}
