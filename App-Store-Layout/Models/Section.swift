//
//  Section.swift
//  App-Store-Layout
//
//  Created by Saim on 15/09/2023.
//

class Section: Decodable {
    let id: Int
    let type: SectionType
    let heading: String?
    let subtitle: String?
    let items: [SectionItem]
    
    enum CodingKeys: CodingKey {
        case id, type, heading, subtitle, items
    }
    
    required init(from decoder: Decoder) throws {
        let container = try! decoder.container(keyedBy: CodingKeys.self)
        
        id = try! container.decode(Int.self, forKey: .id)
        type = try! container.decode(SectionType.self, forKey: .type)
        heading = (try? container.decode(String.self, forKey: .heading)) ?? ""
        subtitle = (try? container.decode(String.self, forKey: .subtitle)) ?? ""
        
        switch type {
        case .bigBanner:
            items = try! container.decode([BigBannerItem].self, forKey: .items)
        case .smallBanner:
            items = try! container.decode([SmallBannerItem].self, forKey: .items)
        case .threeRow, .twoRow:
            items = try! container.decode([RowItem].self, forKey: .items)
        }
    }
}


enum SectionType: String, Decodable, Hashable {
    case bigBanner = "big_banner"
    case smallBanner = "small_banner"
    case twoRow = "two_row"
    case threeRow = "three_row"
}
