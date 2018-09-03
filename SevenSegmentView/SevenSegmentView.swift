//
//  SevenSegmentView.swift
//  SevenSegmentView
//
//  Created by Atsushi KONISHI on 2018/08/30.
//  Copyright © 2018年 小西篤志. All rights reserved.
//

import UIKit

@IBDesignable
class SevenSegmentView: UIView {
    var color: UIColor = UIColor.gray {
        didSet {
            changeColor()
        }
    }
    var num: Int = 0 {
        didSet {
            changeValue()
        }
    }
    
    private var topSegment: SegmentView = SegmentView()
    private var upperLeftSegment: SegmentView! = SegmentView()
    private var upperRightSegment: SegmentView! = SegmentView()
    private var centerSegment: SegmentView! = SegmentView()
    private var lowerLeftSegment: SegmentView! = SegmentView()
    private var lowerRightSegment: SegmentView! = SegmentView()
    private var bottomSegment: SegmentView! = SegmentView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        
        topSegment.kind = .horizontal
        upperLeftSegment.kind = .vertical
        upperRightSegment.kind = .vertical
        centerSegment.kind = .horizontal
        lowerLeftSegment.kind = .vertical
        lowerRightSegment.kind = .vertical
        bottomSegment.kind = .horizontal
        
        addSubview(topSegment)
        addSubview(upperLeftSegment)
        addSubview(upperRightSegment)
        addSubview(centerSegment)
        addSubview(lowerLeftSegment)
        addSubview(lowerRightSegment)
        addSubview(bottomSegment)
        
        topSegment.translatesAutoresizingMaskIntoConstraints = false
        upperLeftSegment.translatesAutoresizingMaskIntoConstraints = false
        upperRightSegment.translatesAutoresizingMaskIntoConstraints = false
        centerSegment.translatesAutoresizingMaskIntoConstraints = false
        lowerLeftSegment.translatesAutoresizingMaskIntoConstraints = false
        lowerRightSegment.translatesAutoresizingMaskIntoConstraints = false
        bottomSegment.translatesAutoresizingMaskIntoConstraints = false
    
    }
    
    override func updateConstraints() {
        super.updateConstraints()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        // top
        topSegment.topAnchor.constraint(equalTo: topAnchor).isActive = true
        topSegment.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        topSegment.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        topSegment.heightAnchor.constraint(equalToConstant: self.frame.height / 10).isActive = true
        // upper left
        upperLeftSegment.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        upperLeftSegment.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        upperLeftSegment.widthAnchor.constraint(equalToConstant: self.frame.height / 10).isActive = true
        upperLeftSegment.heightAnchor.constraint(equalToConstant: self.frame.height * 0.55).isActive = true
        // upper right
        upperRightSegment.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        upperRightSegment.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        upperRightSegment.widthAnchor.constraint(equalToConstant: self.frame.height / 10).isActive = true
        upperRightSegment.heightAnchor.constraint(equalToConstant: self.frame.height * 0.55).isActive = true
        // center
        centerSegment.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        centerSegment.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        centerSegment.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        centerSegment.heightAnchor.constraint(equalToConstant: self.frame.height / 10).isActive = true
        // lower left
        lowerLeftSegment.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        lowerLeftSegment.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        lowerLeftSegment.widthAnchor.constraint(equalToConstant: self.frame.height / 10).isActive = true
        lowerLeftSegment.heightAnchor.constraint(equalToConstant: self.frame.height * 0.55).isActive = true
        // lower right
        lowerRightSegment.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        lowerRightSegment.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        lowerRightSegment.widthAnchor.constraint(equalToConstant: self.frame.height / 10).isActive = true
        lowerRightSegment.heightAnchor.constraint(equalToConstant: self.frame.height * 0.55).isActive = true
        // bottom
        bottomSegment.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        bottomSegment.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        bottomSegment.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        bottomSegment.heightAnchor.constraint(equalToConstant: self.frame.height / 10).isActive = true
        
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
    }
    
    func changeColor() {
        topSegment.color = color
        upperLeftSegment.color = color
        upperRightSegment.color = color
        centerSegment.color = color
        lowerLeftSegment.color = color
        lowerRightSegment.color = color
        bottomSegment.color = color
    }

    func changeValue() {
        switch num {
        case 0:
            topSegment.on()
            upperLeftSegment.on()
            upperRightSegment.on()
            centerSegment.off()
            lowerLeftSegment.on()
            lowerRightSegment.on()
            bottomSegment.on()
        case 1:
            topSegment.off()
            upperLeftSegment.off()
            upperRightSegment.on()
            centerSegment.off()
            lowerLeftSegment.off()
            lowerRightSegment.on()
            bottomSegment.off()
        case 2:
            topSegment.on()
            upperLeftSegment.off()
            upperRightSegment.on()
            centerSegment.on()
            lowerLeftSegment.on()
            lowerRightSegment.off()
            bottomSegment.on()
        case 3:
            topSegment.on()
            upperLeftSegment.off()
            upperRightSegment.on()
            centerSegment.on()
            lowerLeftSegment.off()
            lowerRightSegment.on()
            bottomSegment.on()
        case 4:
            topSegment.off()
            upperLeftSegment.on()
            upperRightSegment.on()
            centerSegment.on()
            lowerLeftSegment.off()
            lowerRightSegment.on()
            bottomSegment.off()
        case 5:
            topSegment.on()
            upperLeftSegment.on()
            upperRightSegment.off()
            centerSegment.on()
            lowerLeftSegment.off()
            lowerRightSegment.on()
            bottomSegment.on()
        case 6:
            topSegment.on()
            upperLeftSegment.on()
            upperRightSegment.off()
            centerSegment.on()
            lowerLeftSegment.on()
            lowerRightSegment.on()
            bottomSegment.on()
        case 7:
            topSegment.on()
            upperLeftSegment.off()
            upperRightSegment.on()
            centerSegment.off()
            lowerLeftSegment.off()
            lowerRightSegment.on()
            bottomSegment.off()
        case 8:
            topSegment.on()
            upperLeftSegment.on()
            upperRightSegment.on()
            centerSegment.on()
            lowerLeftSegment.on()
            lowerRightSegment.on()
            bottomSegment.on()
        case 9:
            topSegment.on()
            upperLeftSegment.on()
            upperRightSegment.on()
            centerSegment.on()
            lowerLeftSegment.off()
            lowerRightSegment.on()
            bottomSegment.on()
        default:
            // error 処理
            break
        }
    }
    
}
