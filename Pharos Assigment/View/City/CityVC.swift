//
//  CityVC.swift
//  Pharos Assigment
//
//  Created by Mohamed Elkazzaz on 19/08/2022.
//

import UIKit

class CityVC: UIViewController {

    @IBOutlet weak var cityTableView: UITableView!
    
    var viewModel: CityViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()

        cityTableView.delegate = self
        cityTableView.dataSource = self
        
        cityTableView.register(UINib(nibName: "CityCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        viewModel.fetchCities()
        viewModel.bindingData = { city, error in
            DispatchQueue.main.async {
                self.cityTableView.reloadData()
            }
        
        if let error = error{
            print(error.localizedDescription)
        }
    }
    }

}

extension CityVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.getCities()?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!
        CityCell
        cell.setup(city: viewModel.getCity(indexPath: indexPath))
        cell.selectionStyle = .none
        return cell
    }
    
    
}
