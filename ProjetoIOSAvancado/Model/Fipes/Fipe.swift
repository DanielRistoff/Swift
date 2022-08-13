//
//  Fipe.swift
//  ProjetoIOSAvancado
//
//  Created by Mac on 13/08/22.
//

import Foundation

// MARK: - Fipe
struct Fipe: Codable {
    let valor, marca, modelo: String
    let anoModelo: Int
    let combustivel, codigoFipe, mesReferencia: String
    let tipoVeiculo: Int
    let siglaCombustivel: String
 
    enum CodingKeys: String, CodingKey {
        case valor = "Valor"
        case marca = "Marca"
        case modelo = "Modelo"
        case anoModelo = "AnoModelo"
        case combustivel = "Combustivel"
        case codigoFipe = "CodigoFipe"
        case mesReferencia = "MesReferencia"
        case tipoVeiculo = "TipoVeiculo"
        case siglaCombustivel = "SiglaCombustivel"
    }
}

/*
// MARK: - Welcome
struct MoviesTopRated: Codable {
    let page: Int
    let results: [Movies]
    let totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - Result
struct Movies: Codable {
    let adult: Bool
    let backdropPath: String
    let genreIDS: [Int]
    let id: Int
    let originalLanguage, originalTitle, overview: String
    let popularity: Double
    let posterPath, releaseDate, title: String
    let video: Bool
    let voteAverage: Double
    let voteCount: Int

    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case genreIDS = "genre_ids"
        case id
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview, popularity
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title, video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
 */
	
