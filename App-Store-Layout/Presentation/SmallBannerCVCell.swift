//
//  SmallBannerCVCell.swift
//  App-Store-Layout
//
//  Created by Saim on 15/09/2023.
//

import UIKit

class SmallBannerCVCell: UICollectionViewCell {
    static let reuseIdentifier = "SmallBannerCVCell"
    
    @IBOutlet var titleLbl: UILabel!
    
    func configure(title: String) {
        titleLbl.text = title
    }
}
