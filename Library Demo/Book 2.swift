//
//  book.swift
//  Nike+Research
//
//  Created by Duc Tran on 3/19/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class Book
{
    var uid: String?
    var name: String?
    var images: [UIImage]?
    var author: String?
    var description: String?
    var detail: String?
    
    init(uid: String, name: String, images: [UIImage], author: String?, description: String, detail: String)
    {
        self.uid = uid
        self.name = name
        self.images = images
        self.author = author
        self.description = description
        self.detail = detail
    }
    
    class func fetchbooks() -> [Book]
    {
        var books = [Book]()
        
        // 1
        var book1Images = [UIImage]()
        for i in 1...8 {
            book1Images.append(UIImage(named: "s\(i)")!)
        }
        let book1 = Book(uid: "875942-100", name: "NIKE AIR MAX 1 ULTRA 2.0 FLYKNIT", images: book1Images, author: "Steve", description: "LIGHTER THAN EVER! The Nike Air Max 1 Ultra 2.0 Flyknit Men's book updates the iconic original with an ultra-lightweight upper while keeping the plush, time-tested Max Air cushioning.", detail: "LIGHTER THAN EVER! The Nike Air Max 1 Ultra 2.0 Flyknit Men's book updates the iconic original with an ultra-lightweight upper while keeping the plush, time-tested Max Air cushioning.")
        books.append(book1)
        
        // 2
        var book2Images = [UIImage]()
        for i in 1...7 {
            book2Images.append(UIImage(named: "t\(i)")!)
        }
        let book2 = Book(uid: "880843-003", name: "NIKE FREE RN FLYKNIT 2017", images: book2Images, author: "Eva", description: "The Nike Free RN Flyknit 2017 Men's Running book brings you miles of comfort with an exceptionally flexible outsole for the ultimate natural ride. Flyknit fabric wraps your foot for a snug, supportive fit while a tri-star outsole expands and flexes to let your foot move naturally.", detail: "The Nike Free RN Flyknit 2017 Men's Running book brings you miles of comfort with an exceptionally flexible outsole for the ultimate natural ride. Flyknit fabric wraps your foot for a snug, supportive fit while a tri-star outsole expands and flexes to let your foot move naturally.")
        books.append(book2)
        
        
        // 3
        var book3Images = [UIImage]()
        for i in 1...6 {
            book3Images.append(UIImage(named: "j\(i)")!)
        }
        let book3 = Book(uid: "384664-113", name: "AIR JORDAN 6 RETRO", images: book3Images, author: "Rox", description: "The Air Jordan 6 Retro Men's book celebrates a championship heritage with design lines and plush cushioning inspired by the ground-breaking hoops original.", detail: "The Air Jordan 6 Retro Men's book celebrates a championship heritage with design lines and plush cushioning inspired by the ground-breaking hoops original.")
        books.append(book3)
        
        // 4
        var book4Images = [UIImage]()
        for i in 1...6 {
            book4Images.append(UIImage(named: "f\(i)")!)
        }
        let book4 = Book(uid: "805144-852", name: "TECH FLEECE WINDRUNNER", images: book4Images, author: "May", description: "The Nike Sportswear Tech Fleece Windrunner Men's Hoodie is redesigned for cooler weather with smooth, engineered fleece that offers lightweight warmth. Bonded seams lend a modern update to the classic chevron design.", detail: "The Nike Sportswear Tech Fleece Windrunner Men's Hoodie is redesigned for cooler weather with smooth, engineered fleece that offers lightweight warmth. Bonded seams lend a modern update to the classic chevron design.")
        books.append(book4)
        
        return books
    }
}

























