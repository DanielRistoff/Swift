//
//  AnoModeloViewModel.swift
//  ProjetoIOSAvancado
//
//  Created by Mac on 13/08/22.
//

import Foundation

class AnoModeloViewModel {
    private let api: ListaModeloAnoApi
    private let viewDelegate: FipeControllerDelegate
    
    var anoModelos: [AnoModeloElement] = []

    init(listaModeloApi: ListaModeloAnoApi, viewDelegate: FipeControllerDelegate) {
        self.api = listaModeloApi
        self.viewDelegate = viewDelegate
    }
    
    func getAnoModelos() {
            api.getAnoModelos {[weak self] data, error in
                let responseData = try? JSONDecoder().decode([AnoModeloElement].self, from: data!)
                self?.anoModelos = responseData!
                self?.viewDelegate.update()
            }
    }
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
