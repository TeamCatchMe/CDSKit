//
//  CDSPlainTextField.swift
//  
//
//  Created by SHIN YOON AH on 2021/10/31.
//

#if !os(macOS)
import UIKit

/**
  - Description:
 
      CDS 기본 TextField 입니다.
 
*/

public class CDSPlainTextField: UITextField {
    
    // MARK: - Enum
    
    public enum CDSTextfieldState {
        case normal
        case pointed
        case warned
        case verified
    }
    
    // MARK: - Public Properties
    
    public var stateType: CDSTextfieldState = .normal {
        didSet {
            setState()
            setMaskingState()
        }
    }
    
    public var maskingIsTouchInside: Bool {
        get { return getButtonIsTouchUpInside() }
    }
    
    public override var placeholder: String? {
        didSet { setPlaceholderTextColor() }
    }
    
    // MARK: - Private Properties
    
    private let clearIcon = CDSIcon.btnRemove.withRenderingMode(.alwaysOriginal)
    
    private let checkIcon = CDSIcon.icCheck.withRenderingMode(.alwaysOriginal)
    
    private let warningIcon = CDSIcon.icWarning.withRenderingMode(.alwaysOriginal)
    
    
    //  MARK: - UI
    
    public let maskingButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 48),
            button.widthAnchor.constraint(equalToConstant: 48)
        ])
        return button
    }()

    // MARK: - Initalizing
    
    public init() {
        super.init(frame: .zero)
        
        setupView()
        setAuto()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setting Method
    
    private func setupView() {
        self.font = CDSFont.body3
        self.tintColor = CDSColor.inputFieldCursor
        self.backgroundColor = CDSColor.inputFieldNormal
        
        self.rightView = maskingButton
        self.rightViewMode = .always
        self.layer.cornerRadius = CDSTextField.Dimension.rounding
        
        self.snp.makeConstraints {
            $0.height.equalTo(CDSTextField.Dimension.textFieldHeight)
        }
        
        setState()
        setMaskingState()
        setLeftPaddingPoints(CDSTextField.Dimension.leftMargin)
        setRightPaddingPoints(CDSTextField.Dimension.rightMargin)
    }
    
    private func setState() {
        switch stateType {
        case .normal:
            self.layer.borderWidth = 0
            self.layer.borderColor = nil
        case .pointed:
            self.layer.borderWidth = CDSTextField.Dimension.borderWidth
            self.layer.borderColor = CDSColor.borderPoint.cgColor
        case .warned:
            self.layer.borderWidth = CDSTextField.Dimension.borderWidth
            self.layer.borderColor = CDSColor.borderWarned.cgColor
        case .verified:
            self.layer.borderWidth = CDSTextField.Dimension.borderWidth
            self.layer.borderColor = CDSColor.borderVerified.cgColor
        }
        
        self.textColor = CDSColor.textPrimary
    }
    
    private func setMaskingState() {
        switch stateType {
        case .normal:
            maskingButton.setImage(nil, for: .normal)
        case .pointed:
            maskingButton.setImage(clearIcon, for: .normal)
        case .warned:
            maskingButton.setImage(warningIcon, for: .normal)
        case .verified:
            maskingButton.setImage(checkIcon, for: .normal)
        }
    }
    
    private func setPlaceholderTextColor() {
        let placeholderTextColor: UIColor
        
        placeholderTextColor = CDSColor.inputFieldPlaceholder
        
        if let text = placeholder {
            attributedPlaceholder = NSAttributedString(
                string: text,
                attributes: [NSAttributedString.Key.foregroundColor : placeholderTextColor]
            )
        }
    }
    
    private func setAuto() {
        autocorrectionType = .no
        autocapitalizationType = .none
        spellCheckingType = .no
        textContentType = .none
    }
    
    private func getButtonIsTouchUpInside() -> Bool {
        return maskingButton.isTouchInside
    }
    
}
#endif
