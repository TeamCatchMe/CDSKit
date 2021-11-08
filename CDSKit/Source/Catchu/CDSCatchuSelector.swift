//
//  CDSCatchuSelector.swift
//  
//
//  Created by SHIN YOON AH on 2021/10/31.
//

import UIKit

/**
  - Description:
 
      CDS Catchu와 관련된 함수들을 모아뒀습니다.
 
*/

@objc public protocol CDSCatchuSelector: AnyObject {
    @objc optional func selectedCatchu(color: Int, phase: Int)
    @objc optional func selectedCatchuBG(color: Int)
    @objc optional func selectedCatchuBGImage(color: Int)
}

extension CDSCatchuSelector where Self: UIImageView {
    
    // MARK: - Method
    
    /// 캐츄 UIImage를 가져오는 메소드
    public func selectedCatchu(color: Int, phase: Int) {
        var type: String?
        let value = CatchuType.init(rawValue: color)
        
        switch value {
        case .green:
            type = "green"
        case .yellowgreen:
            type = "yellowgreen"
        case .orange:
            type = "orange"
        case .skyblue:
            type = "skyblue"
        case .white:
            type = "white"
        case .blue:
            type = "blue"
        case .purple:
            type = "purple"
        case .yellow:
            type = "yellow"
        case .none:
            type = ""
        }
        
        #if SWIFT_PACKAGE
        guard let image = UIImage(named: "catchu_\(String(describing: type))\(phase)", in: .module, compatibleWith: nil) else {
            assert(false, "이미지 로드 실패")
        }
        
        self.image = image
        #endif
    }
    
    /// 캐츄 모아보기뷰 배경 UIImage를 가져오는 메소드
    public func selectedCatchuBGImage(color: Int) {
        var type: UIImage?
        let value = CatchuType.init(rawValue: color)
        
        switch value {
        case .green:
            type = CDSIcon.bg100
        case .yellowgreen:
            type = CDSIcon.bg200
        case .orange:
            type = CDSIcon.bg300
        case .skyblue:
            type = CDSIcon.bg400
        case .white:
            type = CDSIcon.bg500
        case .blue:
            type = CDSIcon.bg600
        case .purple:
            type = CDSIcon.bg700
        case .yellow:
            type = CDSIcon.bg800
        case .none:
            type = nil
        }
        
        self.image = type
    }
}

extension CDSCatchuSelector where Self: UIView {
    /// 캐츄 메인 배경색을 가져오는 메소드
    public func selectedCatchuBG(color: Int) {
        var colorType: UIColor?
        let value = CatchuType.init(rawValue: color)
        
        switch value {
        case .green:
            colorType = CDSCatchuColor.green.backgroundColor
        case .yellowgreen:
            colorType = CDSCatchuColor.yellowgreen.backgroundColor
        case .orange:
            colorType = CDSCatchuColor.orange.backgroundColor
        case .skyblue:
            colorType = CDSCatchuColor.skyblue.backgroundColor
        case .white:
            colorType = CDSCatchuColor.white.backgroundColor
        case .blue:
            colorType = CDSCatchuColor.blue.backgroundColor
        case .purple:
            colorType = CDSCatchuColor.purple.backgroundColor
        case .yellow:
            colorType = CDSCatchuColor.yellow.backgroundColor
        case .none:
            colorType = nil
        }
        
        self.backgroundColor = colorType
    }
}

// MARK: - Enum

enum CatchuType: Int {
    case green = 1
    case yellowgreen = 2
    case orange = 3
    case skyblue = 4
    case white = 5
    case blue = 6
    case purple = 7
    case yellow = 8
}
