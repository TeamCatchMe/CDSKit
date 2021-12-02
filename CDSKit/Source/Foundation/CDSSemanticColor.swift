//
//  CDSSemanticColor.swift
//  
//
//  Created by SHIN YOON AH on 2021/10/31.
//

#if !os(macOS)
import UIKit

/**
  - Description:
 
      UI별로 Color를 구분한 CDSColor 입니다.
 
*/

public enum CDSColor {

    //  MARK: - Background
    
    public static var mainBG: UIColor {
        return CDSBaseColor.black100
    }
    
    public static var secondaryBG: UIColor {
        return CDSBaseColor.black200
    }
    
    public static var pointedBG: UIColor {
        return CDSBaseColor.pink100
    }
    
    public static var popupBG: UIColor {
        return CDSBaseColor.popupBackground
    }
    
    //  MARK: - Text
    
    public static var textPrimary: UIColor {
        return CDSBaseColor.white
    }
    
    public static var textSecondary: UIColor {
        return CDSBaseColor.gray400
    }
    
    public static var textTertiary: UIColor {
        return CDSBaseColor.gray300
    }
    
    @available(*, deprecated, message: "This Color will be removed soon..")
    public static var textQuaternary: UIColor {
        return CDSBaseColor.gray310
    }
    
    public static var textQuinto: UIColor {
        return CDSBaseColor.gray500
    }
    
    public static var textPointer: UIColor {
        return CDSBaseColor.pink100
    }
    
    //  MARK: - Dim
    
    public static var dimNormal: UIColor {
        return CDSBaseColor.gray200
    }
    
    public static var dimHover: UIColor {
        return CDSBaseColor.hover100
    }
    
    public static var dimDisabled: UIColor {
        return CDSBaseColor.hover110
    }
    
    public static var dimSocial: UIColor {
        return CDSBaseColor.hover200
    }
    
    //  MARK: - Border
    
    public static var borderPoint: UIColor {
        return CDSBaseColor.pink210
    }
    
    public static var borderNormal: UIColor {
        return CDSBaseColor.black200
    }
    
    public static var borderPopup: UIColor {
        return CDSBaseColor.gray300
    }
    
    public static var borderWarned: UIColor {
        return CDSBaseColor.red100
    }
    
    public static var borderVerified: UIColor {
        return CDSBaseColor.blue100
    }
    
    
    //  MARK: - Button
    
    public static var buttonNormal: UIColor {
        return CDSBaseColor.pink100
    }
    
    public static var buttonDisabled: UIColor {
        return CDSBaseColor.gray300
    }
    
    public static var buttonPopup: UIColor {
        return CDSBaseColor.gray100
    }
    
    //  MARK: - Separator
    
    public static var mainSeparator: UIColor {
        return CDSBaseColor.gray50
    }
    
    public static var secondarySeparator: UIColor {
        return CDSBaseColor.gray30
    }
    
    
    //  MARK: - InputField
    
    public static var inputFieldNormal: UIColor {
        return CDSBaseColor.black200
    }
    
    public static var inputFieldCursor: UIColor {
        return CDSBaseColor.pink100
    }
    
    @available(*, deprecated, message: "This Color will be removed soon..")
    public static var inputFieldPlaceholder: UIColor {
        return CDSBaseColor.gray310
    }
    
    public static var inputFieldCounter: UIColor {
        return CDSBaseColor.pink210
    }
    
    public static var inputFieldZeroCounter: UIColor {
        return CDSBaseColor.gray200
    }
    
    // MARK: - TextView
    
    public static var textViewNormal: UIColor {
        return CDSBaseColor.black200
    }
    
    public static var textViewCursor: UIColor {
        return CDSBaseColor.pink100
    }
    
    public static var textViewPlaceholder: UIColor {
        return CDSBaseColor.gray200
    }
    
    public static var textViewZeroCounter: UIColor {
        return CDSBaseColor.gray200
    }
    
    
    //  MARK: - Catchu
    
    public static var greenPrimaryBG: UIColor {
        return CDSBaseColor.catchu100
    }

    public static var yellowgreenPrimaryBG: UIColor {
        return CDSBaseColor.catchu200
    }

    public static var orangePrimaryBG: UIColor {
        return CDSBaseColor.catchu300
    }

    public static var skybluePrimaryBG: UIColor {
        return CDSBaseColor.catchu400
    }

    public static var whitePrimaryBG: UIColor {
        return CDSBaseColor.catchu500
    }

    public static var bluePrimaryBG: UIColor {
        return CDSBaseColor.catchu600
    }

    public static var purplePrimaryBG: UIColor {
        return CDSBaseColor.catchu700
    }

    public static var yellowPrimaryBG: UIColor {
        return CDSBaseColor.catchu800
    }
  
    // MARK: - PageControl
    
    public static var dotColor: UIColor {
        return CDSBaseColor.gray400
    }
    
    public static var selectedColor: UIColor {
        return CDSBaseColor.pink100
    }
    
}
#endif
