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
        let book1 = Book(uid: "875942-100", name: "NIKE AIR MAX 1 ULTRA 2.0 FLYKNIT", images: book1Images, author: "Steve", description: "LIGHTER THAN EVER! The Nike Air Max 1 Ultra 2.0 Flyknit Mens book updates the iconic original with an ultra-lightweight upper while keeping the plush, time-tested Max Air cushioning.", detail: "LIGHTER THAN EVER! The Nike Air Max 1 Ultra 2.0 Flyknit Mens book updates the iconic original with an ultra-lightweight upper while keeping the plush, time-tested Max Air cushioning.")
        books.append(book1)
        
        // 2
        var book2Images = [UIImage]()
        for i in 1...7 {
            book2Images.append(UIImage(named: "t\(i)")!)
        }
        let book2 = Book(uid: "880843-003", name: "NIKE FREE RN FLYKNIT 2017", images: book2Images, author: "Eva", description: "The Nike Free RN Flyknit 2017 Mens Running book brings you miles of comfort with an exceptionally flexible outsole for the ultimate natural ride. Flyknit fabric wraps your foot for a snug, supportive fit while a tri-star outsole expands and flexes to let your foot move naturally.", detail: "The Nike Free RN Flyknit 2017 Mens Running book brings you miles of comfort with an exceptionally flexible outsole for the ultimate natural ride. Flyknit fabric wraps your foot for a snug, supportive fit while a tri-star outsole expands and flexes to let your foot move naturally.")
        books.append(book2)
        
        
        // 3
        var book3Images = [UIImage]()
        for i in 1...6 {
            book3Images.append(UIImage(named: "j\(i)")!)
        }
        let book3 = Book(uid: "384664-113", name: "AIR JORDAN 6 RETRO", images: book3Images, author: "Rox", description: "The Air Jordan 6 Retro Mens book celebrates a championship heritage with design lines and plush cushioning inspired by the ground-breaking hoops original.", detail: "The Air Jordan 6 Retro Mens book celebrates a championship heritage with design lines and plush cushioning inspired by the ground-breaking hoops original.")
        books.append(book3)
        
        // 4
        var book4Images = [UIImage]()
        for i in 1...6 {
            book4Images.append(UIImage(named: "f\(i)")!)
        }
        let book4 = Book(uid: "805144-852", name: "TECH FLEECE WINDRUNNER", images: book4Images, author: "May", description: "The Nike Sportswear Tech Fleece Windrunner Mens Hoodie is redesigned for cooler weather with smooth, engineered fleece that offers lightweight warmth. Bonded seams lend a modern update to the classic chevron design.", detail: "The Nike Sportswear Tech Fleece Windrunner Mens Hoodie is redesigned for cooler weather with smooth, engineered fleece that offers lightweight warmth. Bonded seams lend a modern update to the classic chevron design.")
        books.append(book4)
        
        
        /*5
        var book5Images = [UIImage]()
        for i in 1...6 {
            book4Images.append(UIImage(named: "a\(i)")!)
        }
        let book5 = Book(uid: "805144-852", name: "華爾街操盤手給年輕人的15堂理財課", images: book5Images, author: "闕又上", description: "我們沒有富爸爸，但我們可以透過本書，學習有錢人的思考邏輯！我們沒辦法一輩子都工作，所以要學會「讓每一分錢都為我們工作」！ ", detail: "出版日2017-08-01")
        books.append(book5)
        */
        
        /*5
        var book5Images = [UIImage]()
        for i in 1...6 {
            book4Images.append(UIImage(named: "p\(i)")!)
        }
        let book5 = Book(uid: "805144-852", name: "華爾街操盤手給年輕人的15堂理財課", images: book5Images, author: "闕又上", description: "我們沒有富爸爸，但我們可以透過本書，學習有錢人的思考邏輯！我們沒辦法一輩子都工作，所以要學會「讓每一分錢都為我們工作」！ ", detail: "出版日2017-08-01")
        books.append(book5)
        */
        
        // 6
        var book6Images = [UIImage]()
        for i in 1...6 {
            book6Images.append(UIImage(named: "s\(i)")!)
        }
        let book6 = Book(uid: "805144-852", name: "癌症醫師的真心話 - 在患者面前不說的事實！", images: book6Images, author: "中山祐次郎", description: "熱銷累計13萬冊的「真心話」系列第二彈！一年開200台刀、日本現役外科醫師實話實說，一本用真心面對癌症患者與家屬的書。從手術、藥物、生活到醫病關係，公開所有「盡早知道會更好」的癌症知識，為你解開真假不明的說法，從得知罹癌時的焦慮不安中解脫！  ", detail: "出版日2020-06-24")
        books.append(book6)
        
        // 7
        var book7Images = [UIImage]()
        for i in 1...6 {
            book7Images.append(UIImage(named: "s\(i)")!)
        }
        let book7 = Book(uid: "805144-852", name: "創造力3B 法則 - 善用大腦的運作機制，提升創新思考的核心能力！", images: book7Images, author: "David Eagleman 、 Anthony Brandt", description: "達文西、巴哈、蕭邦、愛因斯坦、愛迪生、畢卡索、賈伯斯等這些創造力很高的人是如何醞釀出他們的點子並加以執行？這本書的特別之處在於 : 書中揭露了兩百多位藝術家、科學家、作曲家、工程師的創新靈感小故事", detail: "出版日2020-07-01")
        books.append(book7)
        
        
        // 8
        var book8Images = [UIImage]()
        for i in 1...6 {
            book8Images.append(UIImage(named: "s\(i)")!)
        }
        let book8 = Book(uid: "805144-852", name: "你的善良必須有點鋒芒 - 36則讓你有態度、不委曲，深諳世故卻不世故的世道智慧", images: book8Images, author: "慕顏歌", description: "善良，是一種選擇，但善良不該等同妥協或吃虧，缺乏標準的善良，會為難自己，又慣縱了他人，就因為你很善良，底線應該更高。你當善良，且有力量 ", detail: "出版日2017-04-27")
        books.append(book8)
        
        // 9
        var book9Images = [UIImage]()
        for i in 1...6 {
            book9Images.append(UIImage(named: "s\(i)")!)
        }
        let book9 = Book(uid: "805144-852", name: "超速寫作：30 秒寫出攻心關鍵句，零基礎也能成為文案行銷高手", images: book9Images, author: "呂白", description: "社群網路上的內容寫作，完全不同於傳統的文學創作。在自媒體時代，想打造個人品牌、經營網路社群，你都需要「寫作」這項基本賺錢技能。  ", detail: "出版日2020-07-01")
        books.append(book9)
        
        
        // 10
        var book10Images = [UIImage]()
        for i in 1...6 {
            book10Images.append(UIImage(named: "s\(i)")!)
        }
        let book10 = Book(uid: "805144-852", name: "夢想微微疼", images: book10Images, author: "微疼", description: "廢柴勇者逆襲！爬著夢想這座山啊，即使微微疼，還是要繼續……雖然偶爾遭遇微不幸，也要為人生寫下勵志（搞笑）金句！", detail: "出版日2020-07-01")
        books.append(book10)
        
        
        // 11
        var book11Images = [UIImage]()
        for i in 1...6 {
            book11Images.append(UIImage(named: "s\(i)")!)
        }
        let book11 = Book(uid: "805144-852", name: "習慣致富：成為有錢人，你不需要富爸爸，只需要富習慣", images: book11Images, author: "姆．柯利", description: "是否常覺得自己總是兩袋空空，活得很恐懼？總是納悶有錢人為什麼愈來愈有錢？該怎麼做，才能讓自己晉身有錢人和成功人士的行列？只要養成30個富習慣，富有人生coming soon！  ", detail: "出版日2019-10-01")
        books.append(book11)
        
        // 12
        var book12Images = [UIImage]()
        for i in 1...6 {
            book12Images.append(UIImage(named: "s\(i)")!)
        }
        let book12 = Book(uid: "805144-852", name: "修煉1：動物精的秘密", images: book12Images, author: "文/陳郁如 圖/蔡兆倫", description: "十二歲的混血兒，艾美，暑假時到臺灣的外婆家玩。一天凌晨，艾美發現後山有奇異的火光相互追逐。她好奇的出去觀看，認識了同齡的少女劉影木，兩人成了好朋友，艾美也因此經常出入劉家。", detail: "出版日2012-06-11")
        books.append(book12)
        
        // 13
        var book13Images = [UIImage]()
        for i in 1...6 {
            book13Images.append(UIImage(named: "s\(i)")!)
        }
        let book13 = Book(uid: "805144-852", name: "深度學習的技術：2 週掌握高效學習，立即應用", images: book13Images, author: "楊大輝", description: "學習不夠深，是平庸之人始終平庸的原因。學習足夠深，是高手能產生大量有價值的知識與想法的原因。學習方式不對，是那些勤奮學習的人，卻成長得慢於他人的原因。", detail: "出版日2019-08-31")
        books.append(book13)
        
        // 14
        var book14Images = [UIImage]()
        for i in 1...6 {
            book14Images.append(UIImage(named: "s\(i)")!)
        }
        let book14 = Book(uid: "805144-852", name: "有一種工作，叫生活：離職後我學到的23 件事", images: book14Images, author: "曾彥菁Amazing", description: "不管幾歲，許多人都會遇上一個「坎」：對自己的未來全然沒有想像，也不知道以後該做些什麼？曾經以為的夢幻工作，如今只換來身心的疲憊不堪，遲疑這是不是能做一輩子的事？人生真的要繼續這樣過下去嗎？ ", detail: "出版日曾彥菁Amazing")
        books.append(book14)
        
        
        // 15
        var book15Images = [UIImage]()
        for i in 1...6 {
            book15Images.append(UIImage(named: "s\(i)")!)
        }
        let book15 = Book(uid: "805144-852", name: "擊潰脂肪21天激進代謝法", images: book15Images, author: "安．露易絲‧吉特曼", description: "我要你丟掉所有你自認知道的健康和減重概念。你即將在這本書讀到的，無疑會完全抵觸傳統甚至是其他的飲食智慧。不過，不論你之前嘗試了什麼，請準備好迎接身體健康將會面臨的徹底轉變，正是因為我們現在做的毫無效，所以我們現在就需要完全不同的計畫 。", detail: "出版日2019-01-29")
        books.append(book15)
        
        
        // 16
        var book16Images = [UIImage]()
        for i in 1...6 {
            book16Images.append(UIImage(named: "s\(i)")!)
        }
        let book16 = Book(uid: "805144-852", name: "一九八四", images: book16Images, author: "/喬治．歐威爾", description: "1945年，歐威爾的《動物農莊》在連續遭到五家出版社拒絕後，終於問世了，立即爆紅成為暢銷書，一輩子幾乎都在過窮苦日子的歐威爾，靠著這本書的版稅，買下了某個偏遠小島的房子，並且在那裏寫出了他更為重要的作品《一九八四》。在二十世紀許多重要的文學作品，《一九八四》是難得一見的傑作，因為書中對未來的悲觀假想，隨著時代變得愈來愈真實，也愈來愈讓人無法忘懷。 ", detail: "出版日2012-09-01")
        books.append(book16)
        
        
        // 17
        var book17Images = [UIImage]()
        for i in 1...6 {
            book17Images.append(UIImage(named: "s\(i)")!)
        }
        let book17 = Book(uid: "805144-852", name: "你故事課：3分鐘說18萬個故事，打造影響力", images: book17Images, author: "許榮哲", description: "賈伯斯說，最有影響力的人，就是會說故事的人！許榮哲說，站在故事的肩膀上，我成了巨人。", detail: "出版日2019-04-01")
        books.append(book17)
        
        
    
        
        return books
    }
}

























