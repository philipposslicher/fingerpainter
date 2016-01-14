//
//  CanvasView.swift
//  FingerPainter
//
//  Created by Philippos Slicher on 1/12/16.
//  Copyright © 2016 Your School. All rights reserved.
//
//File Inactive
/*
import UIKit
import Foundation

class CanvasView: UIView {//

    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        CGContextSetStrokeColorWithColor(context, UIColor.orangeColor().CGColor)
        CGContextSetLineWidth(context, 10)
        CGContextBeginPath(context)
        CGContextMoveToPoint(context, 0, 0)
        CGContextAddLineToPoint(context, 150, 400)
        CGContextStrokePath(context)
    }

    func drawFromPoint(start: CGPoint, toPoint end: CGPoint){
        // set the context to that of an image
        UIGraphicsBeginImageContext(canvas.frame.size)
        let context = UIGraphicsGetCurrentContext()
        // draw the existing image onto the current context
        canvas.image?.drawInRect(CGRect(x: 0, y: 0, width: canvas.frame.size.width, height: canvas.frame.size.height))
        // draw the new line segment
        CGContextSetLineWidth(context, 5)
        CGContextSetStrokeColorWithColor(context, UIColor.magentaColor().CGColor)
        CGContextBeginPath(context)
        CGContextMoveToPoint(context, start.x, start.y)
        CGContextAddLineToPoint(context, end.x, end.y)
        CGContextStrokePath(context)
        // obtain a UIImage object from the context
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        // Set the UIImageView's image to the new, generated image canvas.image = newImage
        
    }

}//
*/