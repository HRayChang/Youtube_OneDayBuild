//
//  ViewController.swift
//  Youtube_OneDayBuild
//
//  Created by Ray Chang on 2023/8/15.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
    }


}

