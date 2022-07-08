//
//  SignUpViewController.swift
//  Movie
//
//  Created by 이중원 on 2022/07/06.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var pinTextField: UITextField!
    @IBOutlet weak var nicknameTextField: UITextField!
    @IBOutlet weak var posTextField: UITextField!
    @IBOutlet weak var codeTextField: UITextField!
    
    @IBOutlet weak var signupButton: UIButton!
    
    @IBOutlet weak var infoSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designLabel(labelName: titleLabel, labelText: "JOONGFLIX", labelTextColor: .systemRed, labelTextFontSize: 40)
        designLabel(labelName: infoLabel, labelText: "추가 정보 입력", labelTextColor: UIColor.white, labelTextFontSize: 15)
        
        designTextField(emailTextField, "이메일 주소 또는 전화번호", .emailAddress, false)
        designTextField(pinTextField, "비밀번호", .default, true)
        designTextField(nicknameTextField, "닉네임", .default, false)
        designTextField(posTextField, "위치", .default, false)
        designTextField(codeTextField, "추천 코드 입력", .numberPad, false)
        
        designButton()
        
        designSwitch()
        
    }
    
    func designLabel(labelName: UILabel, labelText: String, labelTextColor: UIColor, labelTextFontSize: Int) {
        
        labelName.text = labelText
        labelName.textColor = labelTextColor
        labelName.font = .systemFont(ofSize: CGFloat(labelTextFontSize))
        
    }
    
    func designTextField(_ name: UITextField, _ placeholder: String, _ keyboardType: UIKeyboardType, _ isSecureTextEntry: Bool) {
        
        name.placeholder = placeholder
        name.textColor = .white
        name.keyboardType = keyboardType
        name.isSecureTextEntry = isSecureTextEntry
        name.backgroundColor = .systemGray3
        name.layer.cornerRadius = 7
        
    }

    func designButton() {
        
        signupButton.setTitle("회원가입", for: .normal)
        signupButton.setTitleColor(UIColor.black, for: .normal)
        signupButton.setTitle("가입중..", for: .highlighted)
        signupButton.setTitleColor(UIColor.red, for: .highlighted)
        signupButton.backgroundColor = .white
        signupButton.layer.cornerRadius = 7

        
    }
    
    func designSwitch() {
        
        infoSwitch.onTintColor = .red
        infoSwitch.thumbTintColor = .white
        infoSwitch.setOn(true, animated: true)

        
    }
    
    
    @IBAction func rootviewClicked(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func signupButtonClicked(_ sender: Any) {
        view.endEditing(true)
    }
}
