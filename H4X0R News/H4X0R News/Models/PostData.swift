//
//  PostData.swift
//  H4X0R News
//
//  Created by Wenli Li on 3/6/24.
//

import Foundation

struct Results: Decodable {
    // this name has to be spelled exactly as the JSON perperty you wanted to extract
    let hits: [Post]
    
}
// same. needs to be the same as the JSON fields
// Identifiable has to have a id pro
struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
