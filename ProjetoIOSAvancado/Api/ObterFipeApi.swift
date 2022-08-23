//
//  FipeModel.swift
//  ProjetoIOSAvancado
//
//  Created by Mac on 13/08/22.
//

import Foundation

class ObterFipeApi {
    func getFipePorAno(completion: @escaping (Data?, Error?) -> Void) -> Void {
        //59 - Marca
        //5940 - Modelo
        //2014-3 - Ano
        URLSession.shared.dataTask(with: URL(string: "https://parallelum.com.br/fipe/api/v1/carros/marcas/59/modelos/5940/anos/2014-3")!, completionHandler: { (data, response, error) in
            completion(data, error)
        }).resume()
    }
}
