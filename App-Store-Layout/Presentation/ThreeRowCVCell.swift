//
//  ThreeGridCVCell.swift
//  App-Store-Layout
//
//  Created by Saim on 15/09/2023.
//

import UIKit

class ThreeRowCVCell: UICollectionViewCell {
    static let reuseIdentifier = "ThreeRowCVCell"
    
    @IBOutlet var titleLbl: UILabel!
    
    @IBOutlet var subtitleLbl: UILabel!
    

    func configure(title: String, subtitle: String) {
        titleLbl.text = title
        subtitleLbl.text = subtitle
    }
}
