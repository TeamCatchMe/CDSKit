//
//  CDSTypography.swift
//  
//
//  Created by SHIN YOON AH on 2021/10/31.
//

#if !os(macOS)
import UIKit

extension String {
    
    public enum CDSTypography {
        case header0
        case header1
        case header2
        case header3
        case subtitle0
        case body0
        case body1
        case body2
        case body3
        case body4
        case body5
        case body6
        case body7
        case caption0
        case caption1
        case caption2
        case button0
        case button1
        case catchu0
        case catchu1
        case catchu2
        case catchu3
        
        public var font: UIFont {
            switch self {
            case .header0:
                return CDSFont.header0
            case .header1:
                return CDSFont.header1
            case .header2:
                return CDSFont.header2
            case .header3:
                return CDSFont.header3
            case .subtitle0:
                return CDSFont.subtitle0
            case .body0:
                return CDSFont.body0
            case .body1:
                return CDSFont.body1
            case .body2:
                return CDSFont.body2
            case .body3:
                return CDSFont.body3
            case .body4:
                return CDSFont.body4
            case .body5:
                return CDSFont.body5
            case .body6:
                return CDSFont.body6
            case .body7:
                return CDSFont.body7
            case .caption0:
                return CDSFont.caption0
            case .caption1:
                return CDSFont.caption1
            case .caption2:
                return CDSFont.caption2
            case .button0:
                return CDSFont.button0
            case .button1:
                return CDSFont.button1
            case .catchu0:
                return CDSFont.catchu0
            case .catchu1:
                return CDSFont.catchu1
            case .catchu2:
                return CDSFont.catchu2
            case .catchu3:
                return CDSFont.catchu3
            }
        }
        
        public var lineHeight: CGFloat {
            switch self {
            default:
                return -0.6
            }
        }
        
        internal func style(color: UIColor? = nil) -> [NSAttributedString.Key: Any] {
            let paragraphStyle = NSMutableParagraphStyle()
            
            paragraphStyle.lineSpacing = self.font.pointSize * self.lineHeight - self.font.lineHeight
            let attributes: [NSAttributedString.Key: Any] = [
                .foregroundColor: color ?? UIColor.black,
                .font: self.font,
                .paragraphStyle: paragraphStyle
            ]
            return attributes
        }
        
    }
    
    internal func attributedString(byPreset preset: CDSTypography, color: UIColor? = nil) -> NSAttributedString {
        return NSAttributedString.init(string : self, attributes: preset.style(color: color))
    }

}
#endif
