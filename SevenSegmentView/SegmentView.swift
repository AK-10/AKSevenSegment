//
//  SegmentView.swift
//  SevenSegmentView
//
//  Created by Atsushi KONISHI on 2018/08/30.
//  Copyright © 2018年 小西篤志. All rights reserved.
//

import UIKit

enum SegmentKind: Int {
    case vertical
    case horizontal
}

@IBDesignable
class SegmentView: UIView {

    var kind: SegmentKind = .horizontal
    var color: UIColor = .lightGray
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.isOpaque = false
        self.backgroundColor = .clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.isOpaque = false
        self.backgroundColor = .clear
    }

    override func draw(_ rect: CGRect) {
        // Drawing code
        let path = UIBezierPath()
        switch kind {
        case .horizontal:
            path.move(to: rect.height, rect.minX)
            path.addLine(to: rect.width - rect.height, rect.minY)
            path.addLine(to: rect.width - rect.height/2, rect.height/2)
            path.addLine(to: rect.width - rect.height, rect.height)
            path.addLine(to: rect.height, rect.height)
            path.addLine(to: rect.height/2, rect.height/2)

        case .vertical:
            path.move(to: rect.minX, rect.width)
            path.addLine(to: rect.width / 2, rect.width / 2)
            path.addLine(to: rect.width, rect.width)
            path.addLine(to: rect.height - rect.width, rect.width)
            path.addLine(to: rect.width / 2, rect.height - rect.width / 2)
            path.addLine(to: rect.minX, rect.height - rect.width)
        }
        path.close()
        path.lineWidth = 6

        UIColor.black.setStroke()
        color.setFill()

        path.fill()
        path.stroke()
    }
    
    func on() {
        self.isHidden = false
    }
    
    func off() {
        self.isHidden = true
    }
}

private extension UIBezierPath {
    func move(to x: CGFloat, _ y: CGFloat) {
        move(to: CGPoint(x: x, y: y))
    }
    
    func addLine(to x: CGFloat, _ y: CGFloat) {
        addLine(to: CGPoint(x: x, y: y))
    }
}
