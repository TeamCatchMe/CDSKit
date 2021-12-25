//
//  CDSSocialButton.swift
//  
//
//  Created by SHIN YOON AH on 2021/12/25.
//

#if !os(macOS)
    import UIKit
    import SnapKit

/**
  - Description:
 
      CDS 소셜 로그인 버튼입니다.
 
*/

public class CDSSocialButton: UIButton {
    
    // MARK: - Enum

    public enum SocialType {
        case kakao
        case naver
        case apple
        
        fileprivate var text: String {
            switch self {
            case .kakao:
                return "카카오 로그인"
            case .naver:
                return "네이버 로그인"
            case .apple:
                return "Apple로 로그인"
            }
        }
        
        fileprivate var background: UIColor {
            switch self {
            case .kakao:
                return CDSBaseColor.kakaoBackground
            case .naver:
                return CDSBaseColor.naverBackground
            case .apple:
                return CDSBaseColor.white
            }
        }
        
        fileprivate var foreground: UIColor {
            switch self {
            case .kakao,
                 .apple:
                return .black
            case .naver:
                return .white
            }
        }
        
        fileprivate var icon: UIImage {
            switch self {
            case .kakao:
                return CDSIcon.icKakao
            case .naver:
                return CDSIcon.icNaver
            case .apple:
                return CDSIcon.icApple
            }
        }
    }

    // MARK: - Private Properties
    
    private var type: SocialType = .kakao
    
    private var font: UIFont = CDSFont.body3
    
    private var width: CGFloat = 335
    
    private var height: CGFloat = 50
    
    private var rounding: CGFloat = 12
    
    private var hoverColor: UIColor = CDSBaseColor.socialHover

    // MARK: - Initalizing
    
    public init(type: SocialType) {
        super.init(frame: .zero)
        
        self.type = type
        
        setButtonConfiguration()
        setSize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setting Method
    
    private func setButtonConfiguration() {
        setImage(type.icon, for: .normal)
        
        setTitle(type.text, for: .normal)
        setTitleColor(type.foreground, for: .normal)
        setTitleColor(hoverColor, for: .highlighted)
        
        backgroundColor = type.background
        
        self.layer.cornerRadius = rounding
        
        self.titleLabel?.font = font
        
        self.titleEdgeInsets = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 0)
    }
    
    private func setSize() {
        self.snp.makeConstraints {
            $0.height.equalTo(height)
            $0.width.equalTo(width)
        }
    }
    
}
#endif
