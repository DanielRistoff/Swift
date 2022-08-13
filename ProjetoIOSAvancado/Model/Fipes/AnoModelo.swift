//
//  AnoModelo.swift
//  ProjetoIOSAvancado
//
//  Created by Mac on 13/08/22.
//

import Foundation

// MARK: - AnoModeloElement
struct AnoModeloElement: Codable {
    let nome, codigo: String
}

typealias AnoModelo = [AnoModeloElement]
