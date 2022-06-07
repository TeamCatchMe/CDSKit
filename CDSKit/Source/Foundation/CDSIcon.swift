//
//  CDSIcon.swift
//  
//
//  Created by SHIN YOON AH on 2021/10/31.
//

#if !os(macOS)
import UIKit

/**
  - Description:
 
      CDS 기본 Icon 입니다.
 
*/

public enum CDSIcon {

    // MARK: - Deco Image
    
    public static var addcatchuDeco: UIImage { .load(name: "addcatchuDeco") }
    public static var deco: UIImage { .load(name: "deco") }
    public static var levelDeco: UIImage { .load(name: "levelDeco") }
    public static var decoEmpty: UIImage { .load(name: "decoEmpty") }
    
    // MARK: - Catchu
    
    public static var bg100: UIImage { .load(name: "bg100") }
    public static var bg200: UIImage { .load(name: "bg200") }
    public static var bg300: UIImage { .load(name: "bg300") }
    public static var bg400: UIImage { .load(name: "bg400") }
    public static var bg500: UIImage { .load(name: "bg500") }
    public static var bg600: UIImage { .load(name: "bg600") }
    public static var bg700: UIImage { .load(name: "bg700") }
    public static var bg800: UIImage { .load(name: "bg800") }
    
    public static var catchuBlue1: UIImage { .load(name: "catchu_blue1") }
    public static var catchuBlue2: UIImage { .load(name: "catchu_blue2") }
    public static var catchuBlue3: UIImage { .load(name: "catchu_blue3") }
    public static var catchuGreen1: UIImage { .load(name: "catchu_green1") }
    public static var catchuGreen2: UIImage { .load(name: "catchu_green2") }
    public static var catchuGreen3: UIImage { .load(name: "catchu_green3") }
    public static var catchuOrange1: UIImage { .load(name: "catchu_orange1") }
    public static var catchuOrange2: UIImage { .load(name: "catchu_orange2") }
    public static var catchuOrange3: UIImage { .load(name: "catchu_orange3") }
    public static var catchuPurple1: UIImage { .load(name: "catchu_purple1") }
    public static var catchuPurple2: UIImage { .load(name: "catchu_purple2") }
    public static var catchuPurple3: UIImage { .load(name: "catchu_purple3") }
    public static var catchuSkyblue1: UIImage { .load(name: "catchu_skyblue1") }
    public static var catchuSkyblue2: UIImage { .load(name: "catchu_skyblue2") }
    public static var catchuSkyblue3: UIImage { .load(name: "catchu_skyblue3") }
    public static var catchuWhite1: UIImage { .load(name: "catchu_white1") }
    public static var catchuWhite2: UIImage { .load(name: "catchu_white2") }
    public static var catchuWhite3: UIImage { .load(name: "catchu_white3") }
    public static var catchuYellow1: UIImage { .load(name: "catchu_yellow1") }
    public static var catchuYellow2: UIImage { .load(name: "catchu_yellow2") }
    public static var catchuYellow3: UIImage { .load(name: "catchu_yellow3") }
    public static var catchuYellowgreen1: UIImage { .load(name: "catchu_yellowgreen1") }
    public static var catchuYellowgreen2: UIImage { .load(name: "catchu_yellowgreen2") }
    public static var catchuYellowgreen3: UIImage { .load(name: "catchu_yellowgreen3") }
    
    public static var catchu: UIImage { .load(name: "catchu") }
    public static var mainCatchu: UIImage { .load(name: "mainCatchu") }
    
    // MARK: - Button
    
    public static var btnCamera: UIImage { .load(name: "buttonCamera") }
    public static var btnAlign: UIImage { .load(name: "btnAlign") }
    public static var btnBack: UIImage { .load(name: "btnBack") }
    public static var btnClose: UIImage { .load(name: "btnClose") }
    public static var btnDatepickerCheck: UIImage { .load(name: "btnDatepickerCheck") }
    public static var btnDropdown: UIImage { .load(name: "btnDropdown") }
    public static var btnGuide: UIImage { .load(name: "btnGuide") }
    public static var btnMore: UIImage { .load(name: "btnMore") }
    public static var btnMoreBig: UIImage { .load(name: "btnMoreBig") }
    public static var btnProfileEdit: UIImage { .load(name: "btnProfileEdit") }
    public static var btnRemove: UIImage { .load(name: "btnRemove") }
    public static var btnSeeAll: UIImage { .load(name: "btnSeeAll") }
    public static var btnCheckboxActive: UIImage { .load(name: "btnCheckboxActive") }
    public static var btnCheckboxInactive: UIImage { .load(name: "btnCheckboxInactive") }
    public static var btnCheckboxAgreeActive: UIImage { .load(name: "btnCheckboxAgreeActive") }
    public static var btnCheckboxAgreeInactive: UIImage { .load(name: "btnCheckboxAgreeInactive") }
    public static var btnDirectionLeft: UIImage { .load(name: "btnDirectionLeft") }
    public static var btnDirectionLeftDim: UIImage { .load(name: "btnDirectionLeftDim") }
    public static var btnDirectionRight: UIImage { .load(name: "btnDirectionRight") }
    public static var btnDirectionRightDim: UIImage { .load(name: "btnDirectionRightDim") }
    
    // MARK: - Rectangle
    
    public static var catchuScrollRectangle131: UIImage { .load(name: "catchuScrollRectangle131") }
    public static var imgRoundRectangle: UIImage { .load(name: "imgRoundRectangle") }
    public static var imgScrollRadius: UIImage { .load(name: "imgScrollRadius") }
    public static var imgScrollRectangle: UIImage { .load(name: "scrollRectangle") }
    
    // MARK: - Icon
    
    public static var icCheck: UIImage { .load(name: "icCheck") }
    public static var icCommentRectangle: UIImage { .load(name: "icCommentRectangle") }
    public static var icEyeOff: UIImage { .load(name: "icEyeOff") }
    public static var icEyeOn: UIImage { .load(name: "icEyeOn") }
    public static var icLike: UIImage { .load(name: "icLike") }
    public static var icLock: UIImage { .load(name: "icLock") }
    public static var icLook: UIImage { .load(name: "icLook") }
    public static var icLookMore: UIImage { .load(name: "icLookMore") }
    public static var icReport: UIImage { .load(name: "icReport") }
    public static var icSetting: UIImage { .load(name: "icSetting") }
    public static var icWarning: UIImage { .load(name: "icWarning") }
    public static var icLock2Fill: UIImage { .load(name: "systemsLock2Fill") }
    public static var icUser3Fill: UIImage { .load(name: "usersUser3Fill") }
    public static var icKakao: UIImage { .load(name: "icKakao") }
    public static var icNaver: UIImage { .load(name: "icNaver") }
    public static var icApple: UIImage { .load(name: "icApple") }
    public static var icKakaoHover: UIImage { .load(name: "icKakaoHover") }
    public static var icNaverHover: UIImage { .load(name: "icNaverHover") }
    public static var icAppleHover: UIImage { .load(name: "icAppleHover") }

    
    // MARK: - Image
    
    public static var imgCatchGuide: UIImage { .load(name: "imgCatchGuide") }
    public static var imgCharacterViewEmptyState: UIImage { .load(name: "imgCharacterViewEmptyState") }
    public static var imgGroupCatchu: UIImage { .load(name: "imgGroupCatchu") }
    public static var imgCryingCatchu: UIImage { .load(name: "imgCryingCatchu") }
    public static var imgLevelTag1: UIImage { .load(name: "leveltag1") }
    public static var imgLevelTag2: UIImage { .load(name: "leveltag2") }
    public static var imgLevelTag3: UIImage { .load(name: "leveltag3") }
    public static var imgLevelTypo: UIImage { .load(name: "levelTypo") }
    public static var imgLogo: UIImage { .load(name: "logo") }
    public static var imgEmpty: UIImage { .load(name: "imgEmpty") }

}

extension UIImage {
    fileprivate static func load(name: String) -> UIImage {
        #if SWIFT_PACKAGE
            guard let image = UIImage(named: name, in: .module, compatibleWith: nil) else {
                assert(false, "\(name) 이미지 로드 실패")
                return UIImage()
            }
        #else
        guard let image = UIImage(named: name, in: CDSBundle.bundle, compatibleWith: nil) else {
                assert(false, "\(name) 이미지 로드 실패")
                return UIImage()
            }
        #endif
        image.accessibilityIdentifier = name
        return image
    }
    
    internal func resize(to length: CGFloat) -> UIImage {
        let newSize = CGSize(width: length, height: length)
        let image = UIGraphicsImageRenderer(size: newSize).image { _ in
            draw(in: CGRect(origin: .zero, size: newSize))
        }
            
        return image
    }
}
#endif
