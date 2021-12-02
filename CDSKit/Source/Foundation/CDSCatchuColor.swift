//
//  CDSCatchuColor.swift
//  
//
//  Created by SHIN YOON AH on 2021/10/31.
//

#if !os(macOS)
import UIKit
/**
  - Description:
 
      CDS Catchu 각각의 컬러입니다.
 
*/

public enum CDSCatchuColor {
    
    case green
    case yellowgreen
    case orange
    case skyblue
    case white
    case blue
    case purple
    case yellow
    
    public var backgroundColor: UIColor {
        switch self {
        case .green:
            return CDSColor.greenPrimaryBG
        case .yellowgreen:
            return CDSColor.yellowgreenPrimaryBG
        case .orange:
            return CDSColor.orangePrimaryBG
        case .skyblue:
            return CDSColor.skybluePrimaryBG
        case .white:
            return CDSColor.whitePrimaryBG
        case .blue:
            return CDSColor.bluePrimaryBG
        case .purple:
            return CDSColor.purplePrimaryBG
        case .yellow:
            return CDSColor.yellowPrimaryBG
        }
    }
    
}
#endif
