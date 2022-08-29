//
//  FipeController.swift
//  ProjetoIOSAvancado
//
//  Created by Mac on 13/08/22.
//

import Foundation
import UIKit

protocol FipeControllerDelegate{
    func update()
    func updateFipeSelecionado()
}

class FipeController: UIViewController, UITableViewDataSource, UITableViewDelegate, FipeControllerDelegate {
    func updateFipeSelecionado() {
        DispatchQueue.main.async {
            if(self.fipeViewModel.fipe != nil){
                FipeController.visualizarLoading(false)
                self.present(VisualizarFipeViewController(fipe: self.fipeViewModel.fipe!), animated: true)
            }
        }
    }
    
    func update() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    @IBOutlet weak var tableView: UITableView!
    private var viewModel: AnoModeloViewModel!
    private var fipeViewModel: FipeViewModel!

    var data: [AnoModeloElement] {
        return viewModel.anoModelos
    }
    
    var fipe: Fipe? {
        return fipeViewModel.fipe
    }
    
    // MARK: - Initialize
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = AnoModeloViewModel(listaModeloApi: ListaModeloAnoApi(), viewDelegate: self)
        fipeViewModel = FipeViewModel(obterFipeApi: ObterFipeApi(), viewDelegate: self)
        
        tableView.delegate = self
        tableView.dataSource = self
        viewModel.getAnoModelos()
    }
    
    
    // MARK: - Data source methods
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        print(self.data)
        
        cell.textLabel?.text = "AMAROK - " + self.data[indexPath.row].nome
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        fipeViewModel.obterFipePorAno(codigo: self.data[indexPath.row].codigo)
        FipeController.visualizarLoading(true)
    }
    
    static func visualizarLoading(_ show: Bool, loadingText : String = "") {
        let existingView = UIApplication.shared.windows.first?.viewWithTag(1200)
        
        if show {
            if existingView != nil {
                return
            }
            let loadingView = self.montarVisualizacaoCarregamento(withFrame: UIScreen.main.bounds, loadingText: loadingText)
            loadingView?.tag = 1200
            UIApplication.shared.windows.first?.addSubview(loadingView!)
        } else {
            existingView?.removeFromSuperview()
        }

    }

     static func montarVisualizacaoCarregamento(withFrame frame: CGRect, loadingText text: String?) -> UIView? {
        let loadingView = UIView(frame: frame)
        loadingView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        let activityIndicator = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        activityIndicator.layer.cornerRadius = 6
        activityIndicator.center = loadingView.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.style = .white
        activityIndicator.startAnimating()
        activityIndicator.tag = 100 

        loadingView.addSubview(activityIndicator)
        if !text!.isEmpty {
            let lbl = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 30))
            let cpoint = CGPoint(x: activityIndicator.frame.origin.x + activityIndicator.frame.size.width / 2, y: activityIndicator.frame.origin.y + 80)
            lbl.center = cpoint
            lbl.textColor = UIColor.white
            lbl.textAlignment = .center
            lbl.text = text
            lbl.tag = 1234
            loadingView.addSubview(lbl)
        }
        return loadingView
    }
    
}

