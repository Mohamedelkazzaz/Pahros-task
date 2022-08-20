//
//  CityVC.swift
//  Pharos Assigment
//
//  Created by Mohamed Elkazzaz on 19/08/2022.
//

import UIKit

class CityVC: UIViewController {

    @IBOutlet weak var fiterCitySearch: UISearchBar!
    @IBOutlet weak var cityTableView: UITableView!
    
    var viewModel: CityViewModel! = CityViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()

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
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension CityVC: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        // When there is no text, filteredData is the same as the original data
        // When user has entered text into the search box
        // Use the filter method to iterate over all items in the data array
        // For each item, return true if the item should be included and false if the
        // item should NOT be included
//        filteredData = searchText.isEmpty ? data : data.filter { (item: String) -> Bool in
//            // If dataItem matches the searchText, return true to include it
//            return item.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil
//        }
        viewModel.search(with: searchText)
        
        cityTableView.reloadData()
    }
}
