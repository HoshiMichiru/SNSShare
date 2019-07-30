//
//  ViewController.swift
//  SNSShareProject
//
//  Created by 星みちる on 2019/07/18.
//  Copyright © 2019 星みちる. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func share(_ sender: UIButton) {
        //1.シェアするデータの配列を作成
        let data = [imageView.image!,"i'm so sick"] as [Any]
        
        //2.シェア画像を作成
        //activityItems:シェアしたいデータを設定
        let controller = UIActivityViewController(activityItems: data, applicationActivities: nil)
        
        //3.シェア画面を作成
        present(controller, animated: true, completion: nil)
            //()の一番最初には表示したい画面を書く
    }
    
}

