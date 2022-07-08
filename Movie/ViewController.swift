//
//  ViewController.swift
//  Movie
//
//  Created by 이중원 on 2022/07/04.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var circleImage_1: UIImageView!
    @IBOutlet weak var circleImage_2: UIImageView!
    @IBOutlet weak var circleImage_3: UIImageView!
    
    @IBOutlet weak var wallpapersImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        circleImage_1.layer.cornerRadius = 60
        circleImage_1.layer.borderWidth = 5
        circleImage_1.layer.borderColor = UIColor.white.cgColor
        
        circleImage_2.layer.cornerRadius = 60
        circleImage_2.layer.borderWidth = 5
        circleImage_2.layer.borderColor = UIColor.white.cgColor
        
        circleImage_3.layer.cornerRadius = 60
        circleImage_3.layer.borderWidth = 5
        circleImage_3.layer.borderColor = UIColor.white.cgColor
    }
    
    @IBAction func changeImageAction(_ sender: Any) {
        wallpapersImage.image = UIImage(named: "movie\(Int.random(in: 1...4))")
    }
}

