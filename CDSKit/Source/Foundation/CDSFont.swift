//
//  CDSFont.swift
//  
//
//  Created by SHIN YOON AH on 2021/10/31.
//

#if !os(macOS)
import UIKit

/**
  - Description:
 
      모든 CDS Font에 기본이 됩니다.
 
*/

public enum CDSFont {
    public static let header0 = UIFont.boldSpoqaFont(ofSize: 24)
    public static let header1 = UIFont.boldSpoqaFont(ofSize: 20)
    public static let header2 = UIFont.regularSpoqaFont(ofSize: 20)
    public static let header3 = UIFont.mediumSpoqaFont(ofSize: 16)
    
    public static let subtitle0 = UIFont.regularDINProFont(ofSize: 18)
    
    public static let body0 = UIFont.mediumDINProFont(ofSize: 32)
    public static let body1 = UIFont.mediumDINProFont(ofSize: 20)
    public static let body2 = UIFont.mediumSpoqaFont(ofSize: 18)
    public static let body3 = UIFont.regularSpoqaFont(ofSize: 16)
    public static let body4 = UIFont.regularDINProFont(ofSize: 16)
    public static let body5 = UIFont.regularSpoqaFont(ofSize: 14)
    public static let body6 = UIFont.regularSpoqaFont(ofSize: 14)
    public static let body7 = UIFont.mediumDINProFont(ofSize: 12)
    
    public static let caption0 = UIFont.regularDINProFont(ofSize: 14)
    public static let caption1 = UIFont.boldSpoqaFont(ofSize: 12)
    
    public static let button0 = UIFont.mediumSpoqaFont(ofSize: 16)
    public static let button1 = UIFont.mediumSpoqaFont(ofSize: 14)
    
    public static let catchu0 = UIFont.extraboldNanumFont(ofSize: 22)
    public static let catchu1 = UIFont.extraboldNanumFont(ofSize: 20)
    public static let catchu2 = UIFont.extraboldNanumFont(ofSize: 18)
    public static let catchu3 = UIFont.extraboldNanumFont(ofSize: 14)
}
#endif
