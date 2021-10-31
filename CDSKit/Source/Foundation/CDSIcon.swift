//
//  CDSIcon.swift
//  
//
//  Created by SHIN YOON AH on 2021/10/31.
//

import UIKit

/**
  - Description:
 
      CDS 기본 Icon 입니다.
 
*/

public enum CDSIcon {

    public static var btnAddPhoto: UIImage { .load(name: "btnAddPhoto") }
    public static var btnAlign: UIImage { .load(name: "btnAlign") }
    public static var btnBack: UIImage { .load(name: "btnBack") }
    public static var btnClose: UIImage { .load(name: "btnClose") }
    public static var btnDatepickerCheck: UIImage { .load(name: "btnDatepickerCheck") }
    public static var btnDropdown: UIImage { .load(name: "btnDropdown") }
    public static var btnGuide: UIImage { .load(name: "btnGuide") }
    public static var btnMore: UIImage { .load(name: "btnMore") }
    public static var btnProfileEdit: UIImage { .load(name: "btnProfileEdit") }
    public static var btnRemove: UIImage { .load(name: "btnRemove") }
    public static var checkboxActive: UIImage { .load(name: "checkboxActive") }
    public static var checkboxInactive: UIImage { .load(name: "checkboxInactive") }
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
    public static var imgCatchGuide: UIImage { .load(name: "imgCatchGuide") }
    public static var imgCharacterViewEmptyState: UIImage { .load(name: "imgCharacterViewEmptyState") }
    public static var imgGroupCatchu: UIImage { .load(name: "imgGroupCatchu") }

}

extension UIImage {
    fileprivate static func load(name: String) -> UIImage {
        guard let image = UIImage(named: name, in: nil, compatibleWith: nil) else {
            assert(false, "\(name) 이미지 로드 실패")
            return UIImage()
        }
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

