//
//  ListaModeloAnoApi.swift
//  ProjetoIOSAvancado
//
//  Created by Mac on 16/08/22.
//
import Foundation

class ListaModeloAnoApi {
    func getAnoModelos(completion: @escaping (Data?, Error?) -> Void) -> Void {
          URLSession.shared.dataTask(with: URL(string: "https://parallelum.com.br/fipe/api/v1/carros/marcas/59/modelos/5940/anos")!, completionHandler: { (data, response, error) in
            completion(data, error)
        }).resume()
    }
}
