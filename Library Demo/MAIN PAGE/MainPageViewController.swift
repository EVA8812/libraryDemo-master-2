//
//  MainPageViewController.swift
//  Library Demo
//
//  Created by mis on 2020/7/26.
//  Copyright © 2020 Developers Academy. All rights reserved.
//

import UIKit

class MainPageViewController: UIViewController {
    
    let data = ["Made for you","Popular Books", "Editor Recommendation","All Category","Hot Author"]

    @IBOutlet var tableView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var books:[Book] = Book.fetchbooks()
        var db :OpaquePointer? = nil
        // 資料庫檔案的路徑
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let sqlitePath = urls[urls.count-1].absoluteString + "books.db"
        
        if sqlite3_open(sqlitePath, &db) == SQLITE_OK {
            print("資料庫連線成功")
        } else {
            print("資料庫連線失敗")
        }
        let sql_create = "create table if not exists books "
            + "( id integer primary key autoincrement, "
            + "uid text, name text, images text, author text, description text, detail text)" as NSString
        
        if sqlite3_exec(db, sql_create.utf8String, nil, nil, nil) == SQLITE_OK{
            print("建立資料表成功")
        }
        
       
        func createDB(_ db:OpaquePointer?, _ books :[Book]) {
            
            var statement :OpaquePointer? = nil
            for book in books {
                let sql_add = "insert into books (uid, name, images, author, description, detail) values ('\(String(describing: book.uid))', '\(book.name)','','\(book.author)','\(book.description)','\(book.detail)')" as NSString
                
                if sqlite3_prepare_v2(db, sql_add.utf8String, -1, &statement, nil) == SQLITE_OK{
                    if sqlite3_step(statement) == SQLITE_DONE {
                        print("新增資料成功")
                    }
                    sqlite3_finalize(statement)
                }
                
            }
            
            
        }
       createDB(db, books)

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "list"{
            if let vc = segue.destination as? FeedTableViewController{
                vc.test = "c"
            }
        }
    }
}
    
extension MainPageViewController : UITableViewDelegate,  UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MainPageTableViewCell
        cell?.mainLabel.text = data[indexPath.row]
        return cell!
        
    }
    
    
//    func tableView(_ tableView: UITableView, heightForRowAtindexPath: IndexPath) -> CGFloat {
//        return 500
//    }
    
        
    }
   


