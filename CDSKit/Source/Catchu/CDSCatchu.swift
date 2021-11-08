//
//  CDSCatchu.swift
//  
//
//  Created by SHIN YOON AH on 2021/10/31.
//

import UIKit

/**
  - Description:
 
      CDS Catchu와 관련된 함수들을 모아뒀습니다.
 
*/

public class CDSCatchu {
    
    // MARK: - Initalizing
    
    public init() {
        
    }
    
    // MARK: - Enum
    
    public enum CatchuType: Int {
        case green = 1
        case yellowgreen = 2
        case orange = 3
        case skyblue = 4
        case white = 5
        case blue = 6
        case purple = 7
        case yellow = 8
    }
    
    // MARK: - Method
    
    /// 캐츄 UIImage를 가져오는 메소드
    public func selectedCatchu(color: Int, phase: Int) -> UIImage? {
        var type: String?
        let value = CatchuType.init(rawValue: color)
        
        switch value {
        case .green:
            type = "Green"
        case .yellowgreen:
            type = "Yellowgreen"
        case .orange:
            type = "Orange"
        case .skyblue:
            type = "Skyblue"
        case .white:
            type = "White"
        case .blue:
            type = "Blue"
        case .purple:
            type = "Purple"
        case .yellow:
            type = "Yellow"
        case .none:
            type = ""
        }
        
        return UIImage(named: "catchu\(String(describing: type))\(phase)") ?? nil
    }
    
    /// 캐츄 메인 배경색을 가져오는 메소드
    public func selectedCatchuBG(color: Int) -> UIColor {
        let value = CatchuType.init(rawValue: color)
        
        switch value {
        case .green:
            return CDSCatchuColor.green.backgroundColor
        case .yellowgreen:
            return CDSCatchuColor.yellowgreen.backgroundColor
        case .orange:
            return CDSCatchuColor.orange.backgroundColor
        case .skyblue:
            return CDSCatchuColor.skyblue.backgroundColor
        case .white:
            return CDSCatchuColor.white.backgroundColor
        case .blue:
            return CDSCatchuColor.blue.backgroundColor
        case .purple:
            return CDSCatchuColor.purple.backgroundColor
        case .yellow:
            return CDSCatchuColor.yellow.backgroundColor
        case .none:
            return UIColor.init()
        }
    }
    
    /// 캐츄 모아보기뷰 배경 UIImage를 가져오는 메소드
    public func selectedCatchuBGImage(color: Int) -> UIImage? {
        let value = CatchuType.init(rawValue: color)
        
        switch value {
        case .green:
            return CDSIcon.bg100
        case .yellowgreen:
            return CDSIcon.bg200
        case .orange:
            return CDSIcon.bg300
        case .skyblue:
            return CDSIcon.bg400
        case .white:
            return CDSIcon.bg500
        case .blue:
            return CDSIcon.bg600
        case .purple:
            return CDSIcon.bg700
        case .yellow:
            return CDSIcon.bg800
        case .none:
            return nil
        }
    }
}

