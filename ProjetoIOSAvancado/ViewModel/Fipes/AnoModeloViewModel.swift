//
//  AnoModeloViewModel.swift
//  ProjetoIOSAvancado
//
//  Created by Mac on 13/08/22.
//

import Foundation

protocol AnoModeloViewModelDelegate: AnyObject {
    func getDetails(anoModeloId: AnoModelo)
}

class AnoModeloViewModel {
    private let model: AnoModeloModel
    
    weak var delegate: AnoModeloViewModelDelegate?
    
    var anoModelos: [AnoModeloElement] = []
    //var anoModeloElement: AnoModeloElement = AnoModeloElement(nome: "b", codigo: "b")

        
    init(anoModelosModel: AnoModeloModel) {
        self.model = anoModelosModel
    }
    
    func  getAnoModelos() {
         model.getAnoModelos { [weak self] data, error in
            let responseData = try? JSONDecoder().decode(AnoModelo.self, from: data!)
            self?.anoModelos = responseData!
        }
        
        while(self.anoModelos.isEmpty){}
    }
    
    // func getDetails(anoModeloId: String) -> Void {
        // getDetailsMovie()
    // }
}

/*
protocol MoviesViewModelDelegate: AnyObject {
    func getDetails(movieId: Movies)
}

class MoviesViewModel {
    private let model: MoviesModel
    
    weak var delegate: MoviesViewModelDelegate?
    
    var movies: [Movies] = []
    
    init(movies: MoviesModel) {
        self.model = movies
    }
        
    func getMovies() {
        model.getMovies { [weak self] data, error in
            let responseData = try? JSONDecoder().decode(MoviesTopRated.self, from: data!)
            self?.movies = responseData!.results
        }
    }
    
    func getDetails(movieId: String) -> Void {
        // getDetailsMovie()
    }
}
 */
