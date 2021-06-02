//
//  VideoModel.swift
//  africa-swiftui
//
//  Created by ed on 31/05/2021.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name:  String
    let headline: String
    
    // comp props
    var thumbnail: String {
        "video-\(id)"
    }
}
