//
//  CanvasView.swift
//  FingerPainter
//
//  Created by Philippos Slicher on 1/12/16.
//  Copyright © 2016 Your School. All rights reserved.
//
import UIKit
import Foundation

class CanvasView: UIView {//
 
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        CGContextSetStrokeColorWithColor(context, UIColor.magentaColor().CGColor)
        CGContextSetLineWidth(context, 10)
        CGContextBeginPath(context)
        CGContextMoveToPoint(context, 0, 0)
        CGContextAddLineToPoint(context, 150, 400)
        CGContextStrokePath(context)
    }

}//