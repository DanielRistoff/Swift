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
