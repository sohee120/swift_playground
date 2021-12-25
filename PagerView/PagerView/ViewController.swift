//
//  ViewController.swift
//  PagerView
//
//  Created by 윤소희 on 2021/12/24.
//

import UIKit

class ViewController: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDelegate.mainVC = self
        
    }


}

