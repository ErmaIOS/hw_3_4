//
//  ViewController.swift
//  hw_3_4
//
//  Created by Erma on 22/1/24.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    
    private lazy var loginLabel = MakeView.shared.makerLabel(text: "Login",textColor: UIColor.init(hex: "#000000"),textSize: 18,textWeight: .bold)
    
    
    private lazy var userIcon = MakeView.shared.makerImage(imageName: "userIcon",imageTintColor: UIColor.init(hex: "#000000"))
    
    
    private lazy var welcomeBackLabel = MakeView.shared.makerLabel(text: "Welcome back , Rohit thakur",textColor: UIColor.init(hex: "#5B5B5B"),textSize: 14)
    
    private lazy var shoppingImage = MakeView.shared.makerImage(imageName: "shoppingImage",imageBackgroundColor: UIColor.init(hex: "#F6F6F6"))
    
    private lazy var enterMobileNumberLabel = MakeView.shared.makerLabel(text: "Enter Your Mobile Number",textColor: UIColor.init(hex: "#F2796B"),textSize: 17)

    private lazy var enterNumberTF = MakeView.shared.makerTF(tfPlaceholder: "Enter Number",tfTextSize: 13, tfBackgroundColor: UIColor.init(hex: "#FFFFFF"), tfCornerRadius: 10, tfTextColor: UIColor.init(hex: "#545151"),tfTextSelf: self,tfTextSelector: #selector(enterNumberTFTapped(sender: )))
    
    private lazy var changeNumberBtn = MakeView.shared.makerButton(buttonSetTitle: "Change Number ?",buttonSetTitleColor: UIColor.init(hex: "#000000", alpha: 0.6),buttonTitleSize: 12,buttonImage: nil, buttonBackgroundColor: UIColor.init(hex: "#F6F6F6"),buttonSelector: #selector(changeNumberBtnTapped(sender: )),buttonSelf: self)
    
    private lazy var loginBtn = MakeView.shared.makerButton(buttonSetTitle: "Login",buttonSetTitleColor: UIColor.init(hex: "#FFFFFF"),buttonTitleSize: 15,buttonImage: nil, buttonCornerRadius: 10,buttonBackgroundColor: UIColor.init(hex: "#F2796B"),buttonTitleWeight: .bold, buttonSelector: #selector(loginBtnTapped(sender: )), buttonSelf: self,buttonIsEnabled: false)
    
    private lazy var googleIcon = MakeView.shared.makerImage(imageName: "googleIcon",imageBackgroundColor: UIColor.init(hex: "#F6F6F6"))
    
    private lazy var googleLabel = MakeView.shared.makerLabel(text: "Google",textColor: UIColor.init(hex: "#000000"),textSize: 14)
    
    private lazy var dontHaveAccountLabel = MakeView.shared.makerLabel(text: "You Don’t have an account ?",textColor: UIColor.init(hex: "#000000", alpha: 0.6),textSize: 11)
    
    private lazy var signUpBtn = MakeView.shared.makerButton(buttonSetTitle: "Sign Up",buttonSetTitleColor: UIColor.init(hex: "#000000"),buttonTitleSize: 11,buttonImage: nil, buttonBackgroundColor: UIColor.init(hex: "#F6F6F6"),buttonTitleWeight: .bold, buttonSelector: #selector(signUpBtnTapped(sender: )), buttonSelf: self)
    override func viewDidLoad() {
        super.viewDidLoad()
       setupUI()
       
    }

    private func setupUI(){
        view.backgroundColor = .init(hex: "#F6F6F6")
        
        view.addSubview(loginLabel)
        view.addSubview(userIcon)
        view.addSubview(welcomeBackLabel)
        view.addSubview(shoppingImage)
        view.addSubview(enterMobileNumberLabel)
        view.addSubview(enterNumberTF)
        view.addSubview(changeNumberBtn)
        view.addSubview(loginBtn)
        view.addSubview(googleIcon)
        view.addSubview(googleLabel)
        view.addSubview(dontHaveAccountLabel)
        view.addSubview(signUpBtn)
        
        
        
      
            loginLabel.snp.makeConstraints { make in
                make.top.equalTo(view.safeAreaLayoutGuide).offset(8)
                make.leading.equalToSuperview().offset(24)
            }
        userIcon.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(10)
            make.leading.equalTo(loginLabel.snp.trailing).offset(4)
            make.width.equalTo(20)
            make.height.equalTo(19)
        }
        
            welcomeBackLabel.snp.makeConstraints { make in
                make.top.equalTo(userIcon.snp.bottom).offset(5)
                make.leading.equalToSuperview().offset(24)
            }
        shoppingImage.snp.makeConstraints { make in
            make.top.equalTo(welcomeBackLabel.snp.bottom).offset(49)
            make.leading.equalToSuperview().offset(57)
            make.trailing.equalToSuperview().offset(-61)
            make.height.equalTo(231)
            make.width.equalTo(296)
        }
            
            enterMobileNumberLabel.snp.makeConstraints { make in
                make.top.equalTo(shoppingImage.snp.bottom).offset(15)
                make.centerX.equalToSuperview()
            }
        enterNumberTF.snp.makeConstraints { make in
            make.top.equalTo(enterMobileNumberLabel.snp.bottom).offset(31)
            make.horizontalEdges.equalToSuperview().inset(23)
            make.height.equalTo(43)
        }
        changeNumberBtn.snp.makeConstraints { make in
            make.top.equalTo(enterNumberTF.snp.bottom).offset(11)
            make.trailing.equalToSuperview().offset(-41)
            make.width.equalTo(110)
            make.height.equalTo(18)
        }
        loginBtn.snp.makeConstraints { make in
            make.top.equalTo(changeNumberBtn.snp.bottom).offset(35)
            make.horizontalEdges.equalToSuperview().inset(23)
            make.height.equalTo(43)
        }
        googleIcon.snp.makeConstraints { make in
            make.top.equalTo(loginBtn.snp.bottom).offset(45)
            make.height.width.equalTo(21)
            make.leading.equalToSuperview().offset(160)
            //make.bottom.equalTo(dontHaveAccountLabel.snp.top).offset(-87)
            //make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-135)
        }
            googleLabel.snp.makeConstraints { make in
                make.top.equalTo(loginBtn.snp.bottom).offset(45)
                make.leading.equalTo(googleIcon.snp.trailing).offset(11)
                make.centerY.equalTo(googleIcon.snp.centerY)
                make.width.equalTo(51)
               // make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-135)
               // make.bottom.equalTo(dontHaveAccountLabel.snp.top).offset(-87)
            }
            
            dontHaveAccountLabel.snp.makeConstraints { make in
                make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-30)
                make.leading.equalToSuperview().offset(97)
            }
            
        
        signUpBtn.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-30)
            make.leading.equalTo(dontHaveAccountLabel.snp.trailing)
            make.trailing.equalToSuperview().offset(-97)
            make.centerY.equalTo(dontHaveAccountLabel.snp.centerY)
        }
    }
    
    
    @objc func changeNumberBtnTapped(sender: UIButton){
        let vc = ChangeNumberViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func loginBtnTapped(sender: UIButton){
        let vc = LoginViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func signUpBtnTapped(sender:UIButton){
        let vc = SignUpViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    @objc func enterNumberTFTapped(sender: Any) {
        guard let enteredText = enterNumberTF.text else { return }

        let phoneRegex = "^(\\+996|996)?(0?[0-9]{9})$"

        let phonePredicate = NSPredicate(format: "SELF MATCHES %@", phoneRegex)

        if phonePredicate.evaluate(with: enteredText) && enteredText.count >= 10{
            loginBtn.isEnabled = true
            enterNumberTF.attributedPlaceholder = nil
            enterNumberTF.layer.borderWidth = 0
            
        } else {
            loginBtn.isEnabled = false
            enterNumberTF.attributedPlaceholder = .init(string: "Please fill out", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
            enterNumberTF.layer.borderWidth = 2
        }
    }

}



















extension UIColor {
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        let hexString: String = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)
        
        if (hexString.hasPrefix("#")) {
            scanner.scanLocation = 1
        }
        var color: UInt32 = 0
        
        scanner.scanHexInt32(&color)
        
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
}
