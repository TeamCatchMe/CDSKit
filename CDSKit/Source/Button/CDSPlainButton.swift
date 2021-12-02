//
//  CDSPlainButton.swift
//  
//
//  Created by SHIN YOON AH on 2021/10/31.
//

#if !os(macOS)
    import UIKit
    import SnapKit

/**
  - Description:
 
      CDS 기본 버튼입니다.
 
*/

public class CDSPlainButton: UIButton {
    
    // MARK: - Enum
    
    public enum CDSButtonType {
        case normal
        case popup
    }

    public enum CDSButtonSize {
        case small
        case medium
        case large
        case xlarge
        
        fileprivate var font: UIFont {
            switch self {
            case .small,
                 .medium,
                 .large:
                return CDSFont.button1
            case .xlarge:
                return CDSFont.button0
            }
        }
        
        fileprivate var width: CGFloat {
            switch self {
            case .small:
                return 91
            case .medium:
                return 108
            case .large:
                return 173
            case .xlarge:
                return 335
            }
        }
        
        fileprivate var height: CGFloat {
            switch self {
            case .small,
                 .medium:
                return 38
            case .large:
                return 50
            case .xlarge:
                return 54
            }
        }
        
        fileprivate var rounding: CGFloat {
            switch self {
            case .small,
                 .medium:
                return 19
            case .large:
                return 25
            case .xlarge:
                return 27
            }
        }
    }

    // MARK: - Public Properties
    
    public var type: CDSButtonType = .normal {
        didSet { setColor() }
    }
    
    public var size: CDSButtonSize = .large {
        didSet { setSize() }
    }
    
    public var text: String? = nil {
        didSet { setTitle(text, for: .normal) }
    }
    
    public var isDisabled: Bool = false {
        didSet {
            self.isEnabled = !isDisabled
            setColor()
        }
    }
    
    // MARK: - Private Properties
    
    private var bgColor: UIColor?
    
    private var foregroundColor: UIColor?
    
    private var fgPressedColor: UIColor?

    // MARK: - Initalizing
    
    public init(type: CDSButtonType, size: CDSButtonSize) {
        super.init(frame: .zero)
        
        self.type = type
        self.size = size
        
        setColor()
        setSize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setting Method
    
    private func setColor() {
        switch type {
        case .normal:
            if isDisabled {
                foregroundColor = CDSColor.dimDisabled
                fgPressedColor = CDSColor.dimDisabled
                bgColor = CDSColor.buttonDisabled
            } else {
                foregroundColor = CDSColor.textPrimary
                fgPressedColor = CDSColor.dimHover
                bgColor = CDSColor.buttonNormal
            }
        case .popup:
            foregroundColor = CDSColor.textPrimary
            fgPressedColor = CDSColor.dimHover
            bgColor = CDSColor.buttonPopup
        }
        
        setTitleColor(foregroundColor, for: .normal)
        setTitleColor(fgPressedColor, for: .highlighted)
        
        backgroundColor = bgColor
    }
    
    private func setSize() {
        self.snp.makeConstraints {
            $0.height.equalTo(size.height)
            $0.width.equalTo(size.width)
        }
        
        self.layer.cornerRadius = size.rounding
        
        self.titleLabel?.font = size.font
    }
    
}
#endif
