//
//  Font.swift
//  
//
//  Created by SHIN YOON AH on 2021/11/01.
//

import Foundation
#if !os(macOS)
import UIKit

public func registerFonts() {
    _ = UIFont.registerFont(bundle: .module, fontName: "DINPro-Bold", fontExtension: "otf")
    _ = UIFont.registerFont(bundle: .module, fontName: "DINPro-Medium", fontExtension: "otf")
    _ = UIFont.registerFont(bundle: .module, fontName: "DINPro-Regular", fontExtension: "otf")
    _ = UIFont.registerFont(bundle: .module, fontName: "NanumSquareRoundOTFEB", fontExtension: "otf")
    _ = UIFont.registerFont(bundle: .module, fontName: "SpoqaHanSansNeo-Bold", fontExtension: "otf")
    _ = UIFont.registerFont(bundle: .module, fontName: "SpoqaHanSansNeo-Medium", fontExtension: "otf")
    _ = UIFont.registerFont(bundle: .module, fontName: "SpoqaHanSansNeo-Regular", fontExtension: "otf")
}

extension UIFont {
    static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) -> Bool {

        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension) else {
            fatalError("Couldn't find font \(fontName)")
        }

        guard let fontDataProvider = CGDataProvider(url: fontURL as CFURL) else {
            fatalError("Couldn't load data from the font \(fontName)")
        }

        guard let font = CGFont(fontDataProvider) else {
            fatalError("Couldn't create font from data")
        }

        var error: Unmanaged<CFError>?
        let success = CTFontManagerRegisterGraphicsFont(font, &error)
        guard success else {
            print("Error registering font: maybe it was already registered.")
            return false
        }

        return true
    }
}
#endif
