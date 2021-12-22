//
//  CDSTextField.swift
//  
//
//  Created by SHIN YOON AH on 2021/10/31.
//

#if !os(macOS)
import UIKit

/**
  - Description:
 
      CDSTextField 안에서 사용되는 기본 상수와 함수를 설정합니다.
 
*/

internal struct CDSTextField {
    internal enum Dimension {
        static let leftMargin: CGFloat = 17.0
        
        static let rightMargin: CGFloat = 48.0
        
        static let textFieldHeight: CGFloat = 50.0
        
        static let rounding: CGFloat = 13.0
        
        static let borderWidth: CGFloat = 1.0
        
        static let subviewSpacing: CGFloat = 10.0
    }
}

// MARK: - UITextField
extension UITextField {
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    
    func setRightPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}
#endif
