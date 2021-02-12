//
//  ViewController.swift
//  PresentDayPresentTime
//
//  Created by Takuya Ando on 2021/02/12.
//

import UIKit
import SRGNovelGameTexts

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let PdPtText = SRGNovelGameTexts()
        PdPtText.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        PdPtText.textColor = UIColor.orange
        self.view.addSubview(PdPtText)
        
        PdPtText.setText("プレゼント・デイ。プレゼントタイム")
        
        PdPtText.startDisplayingText()
    }


}

