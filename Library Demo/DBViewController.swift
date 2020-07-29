//
//  DBViewController.swift
//  Library Demo
//
//  Created by 劉珉彣 on 2020/7/29.
//  Copyright © 2020 Developers Academy. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class DBViewController: UIViewController {

      override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            
            // SQLite
            var db :OpaquePointer? = nil
            // 資料庫檔案的路徑
            let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
            let sqlitePath = urls[urls.count-1].absoluteString + "people.db"
            
            //驗證
            if sqlite3_open(sqlitePath, &db) == SQLITE_OK {
                print("資料庫連線成功")
            } else {
                print("資料庫連線失敗")
            }
            
            let sql_create = "create table if not exists students "
                + "( id integer primary key autoincrement, "
                + "name text, height double)" as NSString
            
            //        建立資料表
            if sqlite3_exec(db, sql_create.utf8String, nil, nil, nil) == SQLITE_OK{
                print("建立資料表成功")
            }
            
    //        createDB(db)
    //        readDB(db)
    //        updateDB(db)
    //        deleteDB(db)
            
            
            

}
}
