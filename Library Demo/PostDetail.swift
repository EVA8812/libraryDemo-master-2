//
//  PostDetail.swift
//  Library Demo
//
//  Created by mis on 2020/7/27.
//  Copyright © 2020 Developers Academy. All rights reserved.
//

import Foundation

struct PostDetail: Codable {
    let title: String
    let createdAt: Date
    let content: String
    var commentCount: Int
    var likeCount: Int
    var media: [Media]
}

struct Media: Codable {
    var url: URL
    
}

