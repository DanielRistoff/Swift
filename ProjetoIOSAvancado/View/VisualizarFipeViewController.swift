//
//  VisualizarFipeViewController.swift
//  ProjetoIOSAvancado
//
//  Created by Mac on 24/08/22.
//
import Foundation
import UIKit

class VisualizarFipeViewController: UIViewController {    
    var fipe: Fipe
    
    override func viewDidLoad() {
        self.view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(valor)
        view.addSubview(marca)
        view.addSubview(modelo)
        view.addSubview(anoModelo)
        view.addSubview(combustivel)
        view.addSubview(codigoFipe)
        view.addSubview(mesReferencia)
        view.addSubview(tipoVeiculo)
        view.addSubview(siglaCombustivel)
        
        configuracoesIniciaisConstraints()
        
    }
    
    init(fipe: Fipe) {
        self.fipe = fipe
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configuracoesIniciaisConstraints() {
        valor.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        valor.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        valor.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20).isActive = true
         
        marca.topAnchor.constraint(equalTo: valor.topAnchor, constant: 40).isActive = true
        marca.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        marca.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20).isActive = true
         
        modelo.topAnchor.constraint(equalTo: marca.topAnchor, constant: 40).isActive = true
        modelo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        modelo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20).isActive = true
        
        anoModelo.topAnchor.constraint(equalTo: modelo.topAnchor, constant: 40).isActive = true
        anoModelo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        anoModelo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20).isActive = true
        
        combustivel.topAnchor.constraint(equalTo: anoModelo.topAnchor, constant: 40).isActive = true
        combustivel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        combustivel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20).isActive = true
        
        codigoFipe.topAnchor.constraint(equalTo: combustivel.topAnchor, constant: 40).isActive = true
        codigoFipe.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        codigoFipe.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20).isActive = true
        
        mesReferencia.topAnchor.constraint(equalTo: codigoFipe.topAnchor, constant: 40).isActive = true
        mesReferencia.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        mesReferencia.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20).isActive = true
        
        tipoVeiculo.topAnchor.constraint(equalTo: mesReferencia.topAnchor, constant: 40).isActive = true
        tipoVeiculo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        tipoVeiculo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20).isActive = true
        
        siglaCombustivel.topAnchor.constraint(equalTo: tipoVeiculo.topAnchor, constant: 40).isActive = true
        siglaCombustivel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        siglaCombustivel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20).isActive = true
     }
     
    lazy var anoModelo: UILabel = {
           let view = UILabel()
           view.translatesAutoresizingMaskIntoConstraints = false
           
           view.text = "Ano Modelelo: " + String(fipe.anoModelo)
           
           return view
    }()
    
    lazy var valor: UILabel = {
           let view = UILabel()
           view.translatesAutoresizingMaskIntoConstraints = false
           
           view.text = "Valor: " + String(fipe.valor)
           
           return view
    }()
    
    lazy var marca: UILabel = {
           let view = UILabel()
           view.translatesAutoresizingMaskIntoConstraints = false
           
           view.text = "Marca: " + String(fipe.marca)
           
           return view
    }()
    
    lazy var modelo: UILabel = {
           let view = UILabel()
           view.translatesAutoresizingMaskIntoConstraints = false
           
           view.text = "Modelo: " + String(fipe.modelo)
           
           return view
    }()
    
    lazy var combustivel: UILabel = {
           let view = UILabel()
           view.translatesAutoresizingMaskIntoConstraints = false
           
           view.text = "Combustivel: " + String(fipe.combustivel)
           
           return view
    }()
    
    lazy var codigoFipe: UILabel = {
           let view = UILabel()
           view.translatesAutoresizingMaskIntoConstraints = false
           
           view.text = "Codigo Fipe: " + String(fipe.codigoFipe)
           
           return view
    }()

    lazy var mesReferencia: UILabel = {
           let view = UILabel()
           view.translatesAutoresizingMaskIntoConstraints = false
           
           view.text = "Mes referencia: " + String(fipe.mesReferencia)
           
           return view
    }()
    
    lazy var tipoVeiculo: UILabel = {
           let view = UILabel()
           view.translatesAutoresizingMaskIntoConstraints = false
           
           view.text = "Tipo Veiculo: " + String(fipe.tipoVeiculo)
           
           return view
    }()
    
    lazy var siglaCombustivel: UILabel = {
           let view = UILabel()
           view.translatesAutoresizingMaskIntoConstraints = false
           
           view.text = "Sigla Combustivel: " + String(fipe.siglaCombustivel)
           
           return view
    }()
    
}
