//
//  CityVC.swift
//  Pharos Assigment
//
//  Created by Mohamed Elkazzaz on 19/08/2022.
//

import UIKit

class CityVC: UIViewController {

    @IBOutlet weak var cityView: UIView!
    @IBOutlet weak var fiterCitySearch: UISearchBar!
    @IBOutlet weak var cityTableView: UITableView!
    @IBOutlet weak var notFoundImage: UIImageView!
    
    var viewModel: CityViewModel! = CityViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        cityView.isHidden = true
        notFoundImage.isHidden = true
        cityTableView.isEditing = false
        
        
        cityTableView.delegate = self
        cityTableView.dataSource = self
        
        fiterCitySearch.delegate = self
        
        cityTableView.register(UINib(nibName: "CityCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        viewModel.viewIsloaded()
        viewModel.bindingData = { city, error in
            DispatchQueue.main.async {
                self.cityTableView.reloadData()
            }
        
        if let error = error{
            print(error.localizedDescription)
        }
    }
    }
    
    private func setupView() {
        
    }

}

extension CityVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if viewModel.getCities()?.isEmpty ?? false {
            cityTableView.isHidden = true
            cityView.isHidden = false
            notFoundImage.isHidden = false
        }else{
            cityTableView.isHidden = false
            cityView.isHidden = true
            notFoundImage.isHidden = true
        }
        return viewModel.getCities()?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cityTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!
        CityCell
        cell.setup(city: viewModel.getCity(indexPath: indexPath))
        cell.selectionStyle = .none
        if viewModel.getCities()?.count ?? 0 == indexPath.row + 1 {
            viewModel.checkIfNeedToFetchNewPage() 
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let stoaryBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = stoaryBoard.instantiateViewController(withIdentifier: "MapVC") as! MapVC
        vc.latitude = viewModel.getCity(indexPath: indexPath)?.coordinate.lat ?? ""
        vc.longtuide = viewModel.getCity(indexPath: indexPath)?.coordinate.lon ?? ""
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}

extension CityVC: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        viewModel.search(with: searchText)
       
        
    }
}
