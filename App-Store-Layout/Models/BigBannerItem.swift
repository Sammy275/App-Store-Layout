//
//  BigBannerItem.swift
//  App-Store-Layout
//
//  Created by Saim on 15/09/2023.
//

class BigBannerItem: SectionItem {
    let updateMessage: String
    let heading: String
    let subheading: String
    let subtitle: String
    
    
    enum CodingKeys: String, CodingKey {
        case heading, subheading, subtitle
        case updateMessage = "update_message"
    }
    
    required init(from decoder: Decoder) throws {
        let container = try! decoder.container(keyedBy: CodingKeys.self)
        updateMessage = try! container.decode(String.self, forKey: .updateMessage)
        heading = try! container.decode(String.self, forKey: .heading)
        subheading = try! container.decode(String.self, forKey: .subheading)
        subtitle = try! container.decode(String.self, forKey: .subtitle)
        
        try! super.init(from: decoder)
    }
}
