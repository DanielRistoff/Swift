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
}

class FipeController: UIViewController, UITableViewDataSource, UITableViewDelegate, FipeControllerDelegate {
    func update() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    @IBOutlet weak var tableView: UITableView!
    private var viewModel: AnoModeloViewModel!

    var data: [AnoModeloElement] {
        return viewModel.anoModelos
    }
    
    // MARK: - Initialize
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = AnoModeloViewModel(listaModeloApi: ListaModeloAnoApi(), viewDelegate: self)
       
        //viewModel.delegate = self
        tableView.delegate = self
        //tableView.dataSource = self
        
        //DispatchQueue.main.async {
        tableView.dataSource = self
        //    self.tableView.reloadData()
        //}
        
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
}


// MARK: - View Model Delegate Methods
//extension MoviesViewModelDelegate {
//    func getDetails(movieId: Movies) {
        // TODO implement
//    }
//}



/*

class MoviesController: UIViewController, UITableViewDataSource, UITableViewDelegate, MoviesViewModelDelegate {
    @IBOutlet weak var tableView: UITableView!
    private var viewModel: MoviesViewModel!

    var data: [Movies] {
        return viewModel.movies
    }
    
    // MARK: - Initialize
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = MoviesViewModel(movies: MoviesModel())
        
        viewModel.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        
        viewModel.getMovies()
    }
    
    
    // MARK: - Data source methods
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = self.data[indexPath.row].title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
}


// MARK: - View Model Delegate Methods
extension MoviesViewModelDelegate {
    func getDetails(movieId: Movies) {
        // TODO implement
    }
}
*/
