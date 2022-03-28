//
//  CDSCatchuSelector.swift
//  
//
//  Created by SHIN YOON AH on 2021/10/31.
//

#if !os(macOS)
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
        let value = CatchuType.init(rawValue: color)
        
        switch value {
        case .green:
            switch phase {
            case 1:
                self.image = CDSIcon.catchuGreen1
            case 2:
                self.image = CDSIcon.catchuGreen2
            case 3:
                self.image = CDSIcon.catchuGreen3
            default:
                break
            }
        case .yellowgreen:
            switch phase {
            case 1:
                self.image = CDSIcon.catchuYellowgreen1
            case 2:
                self.image = CDSIcon.catchuYellowgreen2
            case 3:
                self.image = CDSIcon.catchuYellowgreen3
            default:
                break
            }
        case .orange:
            switch phase {
            case 1:
                self.image = CDSIcon.catchuOrange1
            case 2:
                self.image = CDSIcon.catchuOrange2
            case 3:
                self.image = CDSIcon.catchuOrange3
            default:
                break
            }
        case .skyblue:
            switch phase {
            case 1:
                self.image = CDSIcon.catchuSkyblue1
            case 2:
                self.image = CDSIcon.catchuSkyblue2
            case 3:
                self.image = CDSIcon.catchuSkyblue3
            default:
                break
            }
        case .white:
            switch phase {
            case 1:
                self.image = CDSIcon.catchuWhite1
            case 2:
                self.image = CDSIcon.catchuWhite2
            case 3:
                self.image = CDSIcon.catchuWhite3
            default:
                break
            }
        case .blue:
            switch phase {
            case 1:
                self.image = CDSIcon.catchuBlue1
            case 2:
                self.image = CDSIcon.catchuBlue2
            case 3:
                self.image = CDSIcon.catchuBlue3
            default:
                break
            }
        case .purple:
            switch phase {
            case 1:
                self.image = CDSIcon.catchuPurple1
            case 2:
                self.image = CDSIcon.catchuPurple2
            case 3:
                self.image = CDSIcon.catchuPurple3
            default:
                break
            }
        case .yellow:
            switch phase {
            case 1:
                self.image = CDSIcon.catchuYellow1
            case 2:
                self.image = CDSIcon.catchuYellow2
            case 3:
                self.image = CDSIcon.catchuYellow3
            default:
                break
            }
        case .empty:
            self.image = CDSIcon.catchu
        case .none:
            break
        }
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
        case .empty:
            type = nil
        case .none:
            break
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
        case .empty:
            colorType = CDSCatchuColor.none.backgroundColor
        case .none:
            break
        }
        
        self.backgroundColor = colorType
    }
    
    public func selectedCatchuLayerColor(color: Int) -> UIColor {
        let value = CatchuType.init(rawValue: color)
        
        switch value {
        case .green:
            return CDSCatchuColor.green.backgroundColor
        case .yellowgreen:
            return CDSCatchuColor.yellowgreen.backgroundColor.cgColor
        case .orange:
            return CDSCatchuColor.orange.backgroundColor.cgColor
        case .skyblue:
            return CDSCatchuColor.skyblue.backgroundColor.cgColor
        case .white:
            return CDSCatchuColor.white.backgroundColor.cgColor
        case .blue:
            return CDSCatchuColor.blue.backgroundColor.cgColor
        case .purple:
            return CDSCatchuColor.purple.backgroundColor.cgColor
        case .yellow:
            return CDSCatchuColor.yellow.backgroundColor.cgColor
        case .empty:
            return CDSCatchuColor.none.backgroundColor.cgColor
        case .none:
            break
        }
    }
}

// MARK: - Enum

enum CatchuType: Int {
    case empty = 0
    case green = 1
    case yellowgreen = 2
    case orange = 3
    case blue = 4
    case purple = 5
    case skyblue = 6
    case yellow = 7
    case white = 8
}
#endif
