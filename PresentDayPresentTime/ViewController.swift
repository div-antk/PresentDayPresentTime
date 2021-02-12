//
//  ViewController.swift
//  PresentDayPresentTime
//
//  Created by Takuya Ando on 2021/02/12.
//

import UIKit
import SRGNovelGameTexts

class ViewController: UIViewController {
    
    let PresentDay = SRGNovelGameTexts()
    let PresentTime = SRGNovelGameTexts()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // プレゼントデイ
        PresentDay.frame = CGRect(x: 40, y: 300, width: 200, height: 100)
        PresentDay.textColor = UIColor {_ in return #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)}
        PresentDay.stringDisplaySpeed = 0.2
        PresentDay.font = UIFont(name: "HiraginoSans-W7", size: 20)
        
        self.view.addSubview(PresentDay)
        PresentDay.setText("プレゼント・デイ")
        
        // プレゼントタイム
        PresentTime.frame = CGRect(x: 170, y: 360, width: 200, height: 100)
        PresentTime.textColor = UIColor {_ in return #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)}
        PresentTime.stringDisplaySpeed = 0.2
        PresentTime.font = UIFont(name: "HiraginoSans-W7", size: 20)
        
        self.view.addSubview(PresentTime)
        PresentTime.setText("プレゼント・タイム")
        
    }

    @IBAction func startButton(_ sender: Any) {
        
        PresentDay.startDisplayingText()
//        Thread.sleep(forTimeInterval: 1)
        PresentDay.onAllTextDisplayed = PresentTime.startDisplayingText
//        PresentTime.startDisplayingText()

    }
    
}

