//
//  DetailCollectionReusableHeaderView.swift
//  App-Store-Layout
//
//  Created by Saim on 18/09/2023.
//

import UIKit

class DetailCollectionReusableHeaderView: UICollectionReusableView {
    
    @IBOutlet var titleLbl: UILabel!
    @IBOutlet var subtitleLbl: UILabel!
    
    func configure(title: String, subtitle: String) {
        titleLbl.text = title
        subtitleLbl.text = subtitle
        
        if subtitle.isEmpty {
            subtitleLbl.isHidden = true
        }
    }
}
