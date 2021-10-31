//
//  CDSLabel.swift
//  
//
//  Created by SHIN YOON AH on 2021/10/31.
//

import UIKit

/**
  - Description:
 
      Typography별로 다르게 사용할 수 있는 Label입니다.
 
*/

public class CDSLabel: UILabel {
    
    // MARK: - Public Properties
    
    public var style : String.CDSTypography {
        didSet { setAttributedText() }
    }
    
    public override var text: String? {
        didSet { setAttributedText() }
    }

    public override var textColor: UIColor! {
        didSet { setAttributedText() }
    }
    
    // MARK: - Initalizing
    
    public init(style: String.CDSTypography) {
        self.style = style
        super.init(frame: CGRect.zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setting Method
    
    private func setAttributedText() {
        self.font = style.font
        
        if let text = self.text {
            if let color = textColor {
                self.attributedText = text.attributedString(byPreset: style, color: color)
            } else {
                self.attributedText = text.attributedString(byPreset: style)
            }
        }
    }
}

