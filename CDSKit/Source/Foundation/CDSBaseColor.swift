//
//  CDSBaseColor.swift
//  
//
//  Created by SHIN YOON AH on 2021/10/31.
//

#if !os(macOS)
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

public enum CDSBaseColor {
    
    //  MARK: - Brand Colors
    
    public static var pink100: UIColor {
        return UIColor(hex: "#EA4579")
    }

    public static var pink200: UIColor {
        return UIColor(hex: "#EC477B")
    }

    public static var pink210: UIColor {
        return UIColor(hex: "#FF4882")
    }

    public static var pink300: UIColor {
        return UIColor(hex: "#FF77A2")
    }
    
    //  MARK: - Greyscale Colors
    
    public static var white: UIColor {
        return UIColor(hex: "#FFFFFF")
    }

    public static var gray500: UIColor {
        return UIColor(hex: "#E7E7E7")
    }
    
    public static var gray410: UIColor {
        return UIColor(hex: "#E4E4E4")
    }

    public static var gray400: UIColor {
        return UIColor(hex: "#B7B7B7")
    }

    public static var gray310: UIColor {
        return UIColor(hex: "#A5A5A5")
    }

    public static var gray300: UIColor {
        return UIColor(hex: "#858585")
    }

    public static var gray200: UIColor {
        return UIColor(hex: "#737373")
    }
    
    public static var gray100: UIColor {
        return UIColor(hex: "#5E5E5E")
    }
    
    public static var gray50: UIColor {
        return UIColor(hex: "#5C5C5C")
    }
    
    public static var gray30: UIColor {
        return UIColor(hex: "#313131")
    }

    // MARK: - Background Colors
    
    public static var black100: UIColor {
        return UIColor(hex: "#1C1C1C")
    }

    public static var black200: UIColor {
        return UIColor(hex: "#2F2F2F")
    }

    public static var cdsBackground: UIColor {
        return UIColor(hex: "#4D4D4D")
    }
    
    public static var popupBackground: UIColor {
        return UIColor(hex: "#000000", alpha: 0.8)
    }
    
    //  MARK: - Catchu-back Colors
    
    public static var catchu100: UIColor {
        return UIColor(hex: "#F6BC4C")
    }

    public static var catchu200: UIColor {
        return UIColor(hex: "#709CD2")
    }

    public static var catchu300: UIColor {
        return UIColor(hex: "#74BDE0")
    }
    
    public static var catchu400: UIColor {
        return UIColor(hex: "#B4DD5E")
    }
    
    public static var catchu500: UIColor {
        return UIColor(hex: "#1FBEDC")
    }
    
    public static var catchu600: UIColor {
        return UIColor(hex: "#FDAF19")
    }

    public static var catchu700: UIColor {
        return UIColor(hex: "#57BEB7")
    }
    
    public static var catchu800: UIColor {
        return UIColor(hex: "#9073B1")
    }
    
    // MARK: - Check Colors
    public static var red100: UIColor {
        return UIColor(hex: "#EA4545")
    }
    
    public static var blue100: UIColor {
        return UIColor(hex: "#0078D4")
    }
    
    // MARK: - Hover Colors
    public static var hover100: UIColor {
        return UIColor(hex: "#FCFCFC", alpha: 0.35)
    }
    
    public static var hover110: UIColor {
        return UIColor(hex: "#FCFCFC", alpha: 0.50)
    }
    
    public static var hover200: UIColor {
        return UIColor(hex: "#928D60")
    }
}
#endif
