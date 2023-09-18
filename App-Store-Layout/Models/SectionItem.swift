//
//  SectionItem.swift
//  App-Store-Layout
//
//  Created by Saim on 18/09/2023.
//

import Foundation


class SectionItem: Decodable, Hashable {
    let id: Int
    let title: String
    
    enum CodingKeys: CodingKey {
        case id, title
    }
    
    required init(from decoder: Decoder) throws {
        let container = try! decoder.container(keyedBy: CodingKeys.self)
        id = try! container.decode(Int.self, forKey: .id)
        title = try! container.decode(String.self, forKey: .title)
    }
    
    static func == (lhs: SectionItem, rhs: SectionItem) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
