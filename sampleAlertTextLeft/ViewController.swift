//
//  ViewController.swift
//  sampleAlertTextLeft
//
//  Created by Eriko Ichinohe on 2017/07/18.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapBtn(_ sender: UIButton) {
        //部品のアラートを作る
        let alertController = UIAlertController(title: "メッセージだけ", message: "左寄せ☆", preferredStyle: .alert)
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = NSTextAlignment.left
        
        let messageText = NSMutableAttributedString(
            string: "左寄せ☆",
            attributes: [
                NSParagraphStyleAttributeName: paragraphStyle,
                NSFontAttributeName: UIFont.systemFont(ofSize: 13.0)
            ]
        )
        
        
//        paragraphStyle.alignment = NSTextAlignment.left
//        let titleText = NSMutableAttributedString(
//            string: "タイトルも",
//            attributes: [
//                NSParagraphStyleAttributeName: paragraphStyle,
//                NSFontAttributeName: UIFont.boldSystemFont(ofSize: 18.0)
//            ]
//        )
//        
        alertController.setValue(messageText, forKey: "attributedMessage")
        
//        alertController.setValue(titleText, forKey: "attributedTitle")
//        
        
        //アラートにOKボタンを追加
        // handler:OKボタンが押されたときに行いたい処理を指定する場所
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        //アラートを表示する
        present(alertController,animated: true,completion: nil)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

