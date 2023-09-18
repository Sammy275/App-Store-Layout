//
//  BigBannerCVCell.swift
//  App-Store-Layout
//
//  Created by Saim on 15/09/2023.
//

import UIKit

class BigBannerCVCell: UICollectionViewCell {
//    @IBOutlet var titleLbl: UILabel!
    static let reuseIdentifier = "BigBannerCVCell"
    
    @IBOutlet var updateMsgLabel: UILabel!
    
    @IBOutlet var headingLbl: UILabel!
    
    @IBOutlet var subHeadingLbl: UILabel!
    
    @IBOutlet var titleLbl: UILabel!
    
    
    @IBOutlet var subtitleLbl: UILabel!
    
    
    func configure(updateMsg: String, headingMsg: String, subheadingMsg: String, titleMsg: String, subtitleMsg: String) {
        updateMsgLabel.text = updateMsg.uppercased()
        headingLbl.text = headingMsg
        subHeadingLbl.text = subheadingMsg
        titleLbl.text = titleMsg
        subtitleLbl.text = subtitleMsg
    }
    
}
