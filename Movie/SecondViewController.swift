//
//  SecondViewController.swift
//  Movie
//
//  Created by 이중원 on 2022/07/05.
//

import UIKit

class SecondViewController: UIViewController {
    
    //InterfaceBuilderOutlet: 아울렛 변수
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    //뷰컨트롤러의 생명주기 종류 중 하나
    //사용자에게 화면이 보이기 직전에 실행되는 코드
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        posterImageView.image = UIImage(named: "movie\(Int.random(in: 1...5))")
        posterImageView.layer.cornerRadius = 150
        posterImageView.layer.borderWidth = 5
        //bannerImageView.layer.borderColor = UIColor.blue.cgColor
        
        titleLabel.text = "movie\(Int.random(in: 1...5))"
        titleLabel.backgroundColor = UIColor.lightGray
        //movieTitleLabel.textColor = UIColor.red
        titleLabel.font = UIFont.boldSystemFont(ofSize: 30)
        
    }
    
    //InterfaceBuilderAction:
    @IBAction func resultButtonClicked(_ sender: UIButton) {
        var randNum = Int.random(in: 1...5)
        posterImageView.image = UIImage(named: "movie\(randNum)")
        titleLabel.text = "movie\(randNum)"
    }
    
    
}
