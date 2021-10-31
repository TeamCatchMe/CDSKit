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

public struct CDSCatchu {
    
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
    
    public func selectedCatchu(color: Int, phase: Int) -> UIImage? {
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
        
        return UIImage(named: "color\(String(describing: type))Phase\(phase)") ?? nil
    }
    
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
}

