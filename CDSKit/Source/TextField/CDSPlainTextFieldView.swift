//
//  CDSPlainTextFieldView.swift
//  
//
//  Created by SHIN YOON AH on 2021/10/31.
//

#if !os(macOS)
import UIKit
import SnapKit

/**
  - Description:
 
      CDS 기본 TextField와 Count Label를 합쳐놓은 뷰입니다.
 
*/

public class CDSPlainTextFieldView: UIView {

    // MARK: - Public Properties
    
    public var showsCount: Bool = false {
        didSet {
            countLabel.isHidden = !self.showsCount
        }
    }
    
    public var text: String? {
        get { return textField.text }
        set { textField.text = newValue }
    }
    
    public var placeholder: String? {
        get { return textField.placeholder }
        set { textField.placeholder = newValue }
    }
    
    public var maxCount: Int = 10
    
    // MARK: - UI
    
    public var textField = CDSPlainTextField()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .trailing
        stackView.spacing = CDSTextField.Dimension.subviewSpacing
        return stackView
    }()
    
    private let countLabel = CDSLabel(style: .caption0)
    
    // MARK: - Initalizing
    
    public init() {
        super.init(frame: CGRect.zero)
        
        setView()
        setStackView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setting Method
    
    private func setView() {
        setCounter(count: 0)
        
        countLabel.isHidden = true
        
        textField.maskingButton.addTarget(self, action: #selector(clearTextInputContent), for: .touchUpInside)
        textField.addTarget(self, action: #selector(countingCharacterIn), for: .editingChanged)
    }
    
    private func setStackView() {
        self.addSubview(stackView)
        stackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        stackView.addArrangedSubview(textField)
        stackView.addArrangedSubview(countLabel)

        textField.snp.makeConstraints {
            $0.width.equalToSuperview()
        }
    }
    
    private func setCounter(count: Int) {
        switch count {
        case 0:
            countLabel.textColor = CDSColor.inputFieldZeroCounter
            countLabel.text = "0/\(maxCount)"
        case maxCount:
            countLabel.textColor = CDSColor.inputFieldCounter
            countLabel.text = "\(maxCount)/\(maxCount)"
        default:
            let attributedStr = NSMutableAttributedString(string: "\(count)/\(maxCount)")
            attributedStr.addAttribute(.foregroundColor, value: CDSColor.inputFieldCounter, range: ("\(count)/\(maxCount)" as NSString).range(of: "\(count)"))
            
            countLabel.textColor = CDSColor.inputFieldZeroCounter
            countLabel.attributedText = attributedStr
        }
        
        checkMaxLength(textField: textField, maxLength: maxCount)
    }
    
    private func checkMaxLength(textField: UITextField!, maxLength: Int) {
        if (textField.text?.count ?? 0 > maxLength) {
            textField.deleteBackward()
        }
    }
    
    // MARK: - @objc
    @objc
    private func clearTextInputContent() {
        textField.stateType = .pointed
        
        text?.removeAll()
        setCounter(count: 0)
    }
    
    @objc
    private func countingCharacterIn() {
        setCounter(count: textField.text?.count ?? 0)
    }
}
#endif
