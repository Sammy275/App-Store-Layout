//
//  SectionItem.swift
//  App-Store-Layout
//
//  Created by Saim on 15/09/2023.
//

class RowItem: SectionItem {
    let subtitle: String?
    
    enum CodingKeys: String, CodingKey {
        case subtitle
    }

    required init(from decoder: Decoder) throws {
        let container = try! decoder.container(keyedBy: CodingKeys.self)
        subtitle = (try? container.decode(String.self, forKey: .subtitle)) ?? ""
        
        try! super.init(from: decoder)
    }
}
