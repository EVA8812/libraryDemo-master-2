//
//  Post.swift
//  Library Demo
//
//  Created by mis on 2020/7/27.
//  Copyright © 2020 Developers Academy. All rights reserved.
//

import Foundation

struct Post: Codable {
    let id: Int
    let title: String
    let excerpt: String
    let commentCount: Int
    let likeCount: Int
    let forumName: String
    let gender: String
    var school: String?
    var mediaMeta: [MediaMeta]
    

}

struct MediaMeta: Codable {
    var url: URL
    
    
    
}

