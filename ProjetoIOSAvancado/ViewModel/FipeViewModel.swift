//
//  FipeViewModel.swift
//  ProjetoIOSAvancado
//
//  Created by Mac on 13/08/22.
//

import Foundation

class FipeViewModel {
    private let api: ObterFipeApi
    
    var fipe: Fipe?
    
    init(obterFipeApi: ObterFipeApi) {
        self.api = obterFipeApi
    }
    
    func obterFipePorAno(ano: String) {
        api.getFipePorAno { [weak self] data, error in
            let responseData = try? JSONDecoder().decode(Fipe.self, from: data!)
            self?.fipe = responseData!
           
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
