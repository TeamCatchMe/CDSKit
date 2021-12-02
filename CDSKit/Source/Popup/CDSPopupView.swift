//
//  CDSPopupView.swift
//  
//
//  Created by SHIN YOON AH on 2021/10/31.
//

#if !os(macOS)
import UIKit
import SnapKit

/**
  - Description:
 
      CDS 기본 팝업창입니다.
 
*/

public class CDSPopupView: UIView {

    // MARK: - Public Properties
    
    public var okText: String? = nil {
        didSet { okButton.text = okText }
    }

    // MARK: - UI
    
    private let titleLabel = CDSLabel(style: .body2)
    
    private let infoLabel = CDSLabel(style: .body5)
    
    public var okButton = CDSPlainButton(type: .normal, size: .medium)
    
    public var cancelButton: CDSPlainButton = {
        let button = CDSPlainButton(type: .popup, size: .medium)
        button.text = "아니요"
        return button
    }()
    
    // MARK: - Initalizing
    
    public init(title: String, info: String? = nil) {
        super.init(frame: .zero)
        
        titleLabel.text = title
        infoLabel.text = info
        
        setView()
        setTitleLayout(twoLine: (info != nil))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setting Method
    
    private func setView() {
        backgroundColor = CDSColor.secondaryBG
        layer.cornerRadius = 10
        
        self.addSubview(titleLabel)
        self.addSubview(infoLabel)
        self.addSubview(cancelButton)
        self.addSubview(okButton)
        
        self.snp.makeConstraints {
            $0.height.equalTo(164)
            $0.width.equalTo(270)
        }
        
        cancelButton.snp.makeConstraints {
            $0.bottom.equalToSuperview().inset(20)
            $0.trailing.equalTo(self.snp.centerX).offset(-4.5)
        }
        
        okButton.snp.makeConstraints {
            $0.bottom.equalTo(cancelButton)
            $0.leading.equalTo(self.snp.centerX).offset(4.5)
        }
    }
    
    private func setTitleLayout(twoLine: Bool) {
        titleLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().inset(twoLine ? 39 : 51)
        }
        
        if twoLine {
            infoLabel.snp.makeConstraints {
                $0.centerX.equalToSuperview()
                $0.top.equalTo(titleLabel.snp.bottom).offset(7)
            }
        }
    }
}
#endif
