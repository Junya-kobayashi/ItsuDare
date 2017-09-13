//
//  ViewController.swift
//  ItsuDaregame
//
//  Created by 小林純也 on 2017/09/07.
//  Copyright © 2017年 Junya Kobayashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var whenLabel: UILabel!
    @IBOutlet var whereLabel: UILabel!
    @IBOutlet var whoLabel: UILabel!
    @IBOutlet var whatLabel: UILabel!
    
    let whenArray: [String] = ["一年前", "一週間前", "昨日", "今日"]
    let whereArray: [String] = ["山の上で", "アメリカで", "学校で", "クラスで"]
    let whoArray: [String] = ["僕が", "君が", "大統領が", "友達が"]
    let whatArray: [String] = ["叫んだ", "演説した", "楽しんだ", "踊った"]

    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func change(){
        whenLabel.text = whenArray[index]
        whereLabel.text = whereArray[index]
        whoLabel.text = whoArray[index]
        whatLabel.text = whatArray[index]
        
        index = index + 1
        
        if index > 3 {
            index = 0
        }
    }
    
    @IBAction func reset() {
        whenLabel.text = "____"
        whereLabel.text = "____"
        whoLabel.text = "____"
        whatLabel.text = "____"
        
        index = 0
    }
    
    @IBAction func random(){
        let whenIndex = Int(arc4random_uniform(4))
        let whereIndex = Int(arc4random_uniform(4))
        let whoIndex = Int(arc4random_uniform(4))
        let whatIndex = Int(arc4random_uniform(4))
        
        print("いつ: \(whenIndex)")
        print("どこで: \(whereIndex)")
        print("だれが: \(whoIndex)")
        print("何した: \(whatIndex)")
        
        
        whenLabel.text = whenArray[whenIndex]
        whereLabel.text = whereArray[whereIndex]
        whoLabel.text = whoArray[whoIndex]
        whatLabel.text = whatArray[whatIndex]
    }

}

