//
//  MakeView.swift
//  hw_3_4
//
//  Created by Erma on 22/1/24.
//

import UIKit

class MakeView{
    
    static let shared = MakeView()
    
    func makerLabel(text:String = "",
                    textColor: UIColor = .white,
                    textSize:CGFloat = 20,
                    textWeight:UIFont.Weight = .regular,
                    textNumberOfLines: Int = 0
                    ) -> UILabel {
        let view = UILabel()
        view.text = text
        view.textColor = textColor
        view.font = .systemFont(ofSize: textSize,weight: textWeight)
        view.numberOfLines = textNumberOfLines
        return view
    }
    
    
    func makerView(viewBackgroundColor: UIColor = .white,
                   viewBorderColor: CGColor = UIColor.red.cgColor,
                   viewCornerRadius: CGFloat = 0) -> UIView{
        let view = UIView()
        view.backgroundColor = viewBackgroundColor
        view.layer.borderColor = viewBorderColor
        view.layer.cornerRadius = viewCornerRadius
        return view
    }
    
    
    func makerTF(tfPlaceholder: String = "",
                 tfTextSize: CGFloat = 20,
                 tfBackgroundColor: UIColor = .white,
                 tfBorderColor: CGColor = UIColor.red.cgColor,
                 tfCornerRadius: CGFloat = 12,
                 tfLeftViewMode: UITextField.ViewMode = .always,
                 tfTextColor: UIColor = .blue,
                 tfTextSelf: Any?,
                 tfTextSelector: Selector,
                 tfTextControl: UIControl.Event = .editingChanged
    ) -> UITextField{
        let view = UITextField()
        view.placeholder = tfPlaceholder
        view.layer.borderColor = tfBorderColor
        view.layer.cornerRadius = tfCornerRadius
        view.backgroundColor = tfBackgroundColor
        view.font = .systemFont(ofSize: tfTextSize)
        let view2 = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 5))
        view.leftView = view2
        view.leftViewMode = tfLeftViewMode
        view.textColor = tfTextColor
        view.addTarget(tfTextSelf, action: tfTextSelector, for: tfTextControl)
        return view
    }
    
    func makerImage(imageName: String = "",
                    imageContentMode: UIView.ContentMode = .scaleAspectFill,
                    imageBackgroundColor: UIColor = .white,
                    imageTintColor: UIColor = .white
                    )-> UIImageView{
        let view = UIImageView()
        view.image = UIImage(named: imageName)
        view.contentMode = imageContentMode
        view.backgroundColor = imageBackgroundColor
        view.tintColor = imageTintColor
        return view
    }
    
    func makerButton(buttonSetTitle: String = "",
                     buttonSetTitleFor: UIControl.State = .normal,
                     buttonSetTitleColor: UIColor = .black,
                     buttonTitleSize : CGFloat = 20,
                     buttonImage: UIImage?,
                     buttonTintColor: UIColor = .white,
                     buttonCornerRadius: CGFloat = 12,
                     buttonBackgroundColor: UIColor = .black,
                     buttonTitleWeight: UIFont.Weight = .regular,
                     buttonSelector: Selector,
                     buttonSelf: Any?,
                     buttonControl: UIControl.Event = .touchUpInside,
                     buttonIsEnabled: Bool = true
//                     buttonNumberOfLines: Int = 0
                     )-> UIButton{
        let view = UIButton(type: .system)
        view.setTitle(buttonSetTitle, for: buttonSetTitleFor)
        view.setTitleColor(buttonSetTitleColor, for: buttonSetTitleFor)
        view.titleLabel?.font = UIFont.systemFont(ofSize: buttonTitleSize,weight: buttonTitleWeight)
        view.setImage(buttonImage, for: buttonSetTitleFor)
        view.tintColor = buttonTintColor
        view.layer.cornerRadius = buttonCornerRadius
        view.backgroundColor = buttonBackgroundColor
        view.addTarget(buttonSelf, action: buttonSelector, for: buttonControl)
        view.isEnabled = buttonIsEnabled
//        view.titleLabel?.numberOfLines = buttonNumberOfLines
        return view
       
    }
}




