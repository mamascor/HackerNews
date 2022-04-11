//
//  Model.swift
//  HackerNews
//
//  Created by Marco Mascorro on 4/10/22.
//

import Foundation


struct StorieModel: Decodable {
    let hits: [Hits]
}

struct Hits: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let title: String
    let url: String?
    let points: Int
    let objectID: String
}
