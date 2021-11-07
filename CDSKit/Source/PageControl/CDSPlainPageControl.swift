//
//  CDSPlainPageControl.swift
//  
//
//  Created by SHIN YOON AH on 2021/11/07.
//

import UIKit

class CDSPlainPageControl: UIView {
    
    // MARK: - Public Properties
    
    public var pages: Int = 0 {
        didSet { setNeedsDisplay() }
    }
    
    public var selectedPage: Int = 0 {
        didSet { setNeedsDisplay() }
    }
    
    public var dotColor = CDSColor.dotColor {
        didSet { setNeedsDisplay() }
    }
    
    public var selectedColor = CDSColor.selectedColor {
        didSet { setNeedsDisplay() }
    }
    
    // MARK: - Private Properties
    
    private let dotSize: CGFloat = 6
    
    private let spacing: CGFloat = 6
    
    // MARK: - Initalizing
    
    public init() {
        super.init(frame: .zero)
        isOpaque = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Unsupported")
    }
    
    // MARK: - Override Methods
    
    override func draw(_ rect: CGRect) {
        (0..<pages).forEach { page in
            (page == selectedPage ? selectedColor : dotColor).setFill()
            
            let center = CGPoint(x: rect.minX + dotSize / 2 + (dotSize + spacing) * CGFloat(page), y: rect.midY)
            let size = CGSize(width: 6, height: 6)
            let rect = CGRect(origin: center, size: size)
            
            UIBezierPath(roundedRect: rect, cornerRadius: 3).fill()
        }
    }
}
