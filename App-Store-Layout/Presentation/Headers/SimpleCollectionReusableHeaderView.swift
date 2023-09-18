//
//  SimpleCollectionReusableHeaderView.swift
//  App-Store-Layout
//
//  Created by Saim on 18/09/2023.
//

import UIKit

class SimpleCollectionReusableHeaderView: UICollectionReusableView {
    
    
    @IBOutlet var titleLbl: UILabel!
    
    func configure(title: String) {
        titleLbl.text = title
    }
    
}
