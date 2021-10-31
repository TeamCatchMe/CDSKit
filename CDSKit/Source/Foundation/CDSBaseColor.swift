//
//  CDSBaseColor.swift
//  
//
//  Created by SHIN YOON AH on 2021/10/31.
//

import UIKit

fileprivate extension UIColor {
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        var hexFormatted: String = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        
        if hexFormatted.hasPrefix("#") {
            hexFormatted = String(hexFormatted.dropFirst())
        }
        
        assert(hexFormatted.count == 6, "Invalid hex code used.")
        var rgbValue: UInt64 = 0
        Scanner(string: hexFormatted).scanHexInt64(&rgbValue)
        
        self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgbValue & 0x0000FF) / 255.0, alpha: alpha)
    }
}

/**
  - Description:
 
      모든 CDS Color에 기본이 됩니다.
 
*/

internal enum CDSBaseColor {
    
    //  MARK: - Brand Colors
    
    static var pink100: UIColor {
        return UIColor(hex: "#EA4579")
    }

    static var pink200: UIColor {
        return UIColor(hex: "#EC477B")
    }

    static var pink210: UIColor {
        return UIColor(hex: "#FF4882")
    }

    static var pink300: UIColor {
        return UIColor(hex: "#FF77A2")
    }
    
    //  MARK: - Greyscale Colors
    
    static var white: UIColor {
        return UIColor(hex: "#FFFFFF")
    }

    static var gray500: UIColor {
        return UIColor(hex: "#E7E7E7")
    }

    static var gray400: UIColor {
        return UIColor(hex: "#B7B7B7")
    }

    static var gray310: UIColor {
        return UIColor(hex: "#A5A5A5")
    }

    static var gray300: UIColor {
        return UIColor(hex: "#858585")
    }

    static var gray200: UIColor {
        return UIColor(hex: "#737373")
    }
    
    static var gray100: UIColor {
        return UIColor(hex: "#5E5E5E")
    }
    
    static var gray50: UIColor {
        return UIColor(hex: "#5C5C5C")
    }

    // MARK: - Background Colors
    
    static var black100: UIColor {
        return UIColor(hex: "#1C1C1C")
    }

    static var black200: UIColor {
        return UIColor(hex: "#2F2F2F")
    }

    static var black300: UIColor {
        return UIColor(hex: "#2F2F2F")
    }

    static var cdsBackground: UIColor {
        return UIColor(hex: "#4D4D4D")
    }
    
    static var popupBackground: UIColor {
        return UIColor(hex: "#000000", alpha: 0.8)
    }
    
    //  MARK: - Catchu-back Colors
    
    static var catchu100: UIColor {
        return UIColor(hex: "#F6BC4C")
    }

    static var catchu200: UIColor {
        return UIColor(hex: "#709CD2")
    }

    static var catchu300: UIColor {
        return UIColor(hex: "#74BDE0")
    }
    
    static var catchu400: UIColor {
        return UIColor(hex: "#B4DD5E")
    }
    
    static var catchu500: UIColor {
        return UIColor(hex: "#1FBEDC")
    }
    
    static var catchu600: UIColor {
        return UIColor(hex: "#FDAF19")
    }

    static var catchu700: UIColor {
        return UIColor(hex: "#57BEB7")
    }
    
    static var catchu800: UIColor {
        return UIColor(hex: "#9073B1")
    }
    
    // MARK: - Check Colors
    static var red100: UIColor {
        return UIColor(hex: "#EA4545")
    }
    
    static var blue100: UIColor {
        return UIColor(hex: "#0078D4")
    }
    
    // MARK: - Hover Colors
    static var hover100: UIColor {
        return UIColor(hex: "#FCFCFC", alpha: 0.35)
    }
    
    static var hover110: UIColor {
        return UIColor(hex: "#FCFCFC", alpha: 0.50)
    }
    
    static var hover200: UIColor {
        return UIColor(hex: "#928D60")
    }
}

