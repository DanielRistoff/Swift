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
    
    func obterFipePorAno(ano: String) {
        api.getFipePorAno { [weak self] data, error in
            let responseData = try? JSONDecoder().decode(Fipe.self, from: data!)
            self?.fipe = responseData!
            self?.viewDelegate.updateFipeSelecionado()
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
