//
//  PageModel.swift
//  Pinch
//
//  Created by Ghenadie Isacenco on 21/10/2025.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
