//
//  CityCell.swift
//  Pharos Assigment
//
//  Created by Mohamed Elkazzaz on 19/08/2022.
//

import UIKit

class CityCell: UITableViewCell {
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var cityImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(city: Cities?){
        cityNameLabel.text = city?.name
        let imageLink = Url().googleMapApi(lat: city?.coordinate.lat ?? "", long: city?.coordinate.lon ?? "")
        cityImage.downloaded(from: imageLink)
//        let imageLink = Url().googleMapApi(lat: city?.coordinate.lat ?? "", long: city?.coordinate.lon ?? "")
//        NetworkManager().downloadImage(url: imageLink) { downloadedImage, error in
//            guard let _ = error else {
//                //&ot Ay sora
//                self.cityImage.image = UIImage(systemName: "error")
//                return
//            }
//            self.cityImage.image = downloadedImage
//        }
    }
    
}
