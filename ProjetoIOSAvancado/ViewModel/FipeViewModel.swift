//
//  FipeViewModel.swift
//  ProjetoIOSAvancado
//
//  Created by Mac on 13/08/22.
//

import Foundation

class FipesViewModel {
    private let model: FipeModel
    
    var fipe: Fipe?
    
    init(fipe: FipeModel) {
        self.model = fipe
    }
    
    func getMovies() {
        model.getFipe { [weak self] data, error in
            let responseData = try? JSONDecoder().decode(Fipe.self, from: data!)
            self?.fipe = responseData!
        }
    }
    
    func getDetails(fipeId: String) -> Void {
        // getDetailsMovie()
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
