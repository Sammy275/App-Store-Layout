//
//  ItemProtocol.swift
//  App-Store-Layout
//
//  Created by Saim on 15/09/2023.
//

//protocol ItemProtocol {
//    var title: String {get}
//}



protocol ItemProtocol: Hashable {
    var title: String {get}
}

struct AnyItem: ItemProtocol {
    let title: String
}
