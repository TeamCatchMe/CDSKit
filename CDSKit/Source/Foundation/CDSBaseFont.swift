//
//  CDSBaseFont.swift
//  
//
//  Created by SHIN YOON AH on 2021/10/31.
//

import UIKit

struct CDSBaseFontName {
    static let dinProRegular = "DINPro-Regular"
    static let dinProMedium = "DINPro-Medium"
    static let dinProBold = "DINPro-Bold"
    static let nanumSquareRound = "NanumSquareRoundOTFEB"
    static let spoqaHanSansNeoRegular = "SpoqaHanSansNeo-Regular"
    static let spoqaHanSansNeoMedium = "SpoqaHanSansNeo-Medium"
    static let spoqaHanSansNeoBold = "SpoqaHanSansNeo-Bold"
}

extension UIFont {
    @objc class func regularDINProFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: CDSBaseFontName.dinProRegular, size: size)!
    }
    
    @objc class func mediumDINProFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: CDSBaseFontName.dinProMedium, size: size)!
    }
    
    @objc class func boldDINProFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: CDSBaseFontName.dinProBold, size: size)!
    }
    
    @objc class func extraboldNanumFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: CDSBaseFontName.nanumSquareRound, size: size)!
    }
    
    @objc class func regularSpoqaFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: CDSBaseFontName.spoqaHanSansNeoRegular, size: size)!
    }
    
    @objc class func mediumSpoqaFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: CDSBaseFontName.spoqaHanSansNeoMedium, size: size)!
    }
    
    @objc class func boldSpoqaFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: CDSBaseFontName.spoqaHanSansNeoBold, size: size)!
    }
}


