/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canvas: UIImageView!
    
    //Sliders
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var widthSlider: UISlider!
    
    //Outlet for color preview
    @IBOutlet weak var colorView: UIImageView!
    
    //Slider colors config
    var red: CGFloat = 0.5
    var blue: CGFloat = 0.5
    var green: CGFloat = 0.5
    var width: CGFloat = 1
    
    
    let context = UIGraphicsGetCurrentContext()
    
    
    @IBAction func colorChange(sender: AnyObject) {
        red = CGFloat(redSlider.value)
        green = CGFloat(greenSlider.value)
        blue = CGFloat(blueSlider.value)
        width = CGFloat(widthSlider.value)
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
    @IBAction func clearImage(sender: UIBarButtonItem) {
        canvas.image = nil
    }
    var start: CGPoint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func drawFromPoint(start: CGPoint, toPoint end: CGPoint){
        // set the context to that of an image
        UIGraphicsBeginImageContext(canvas.frame.size)
        let context = UIGraphicsGetCurrentContext()
        // draw the existing image onto the current context
        canvas.image?.drawInRect(CGRect(x: 0, y: 0,
            width: canvas.frame.size.width,
            height: canvas.frame.size.height))
        // draw the new line segment
        CGContextSetLineWidth(context, width)
        CGContextSetRGBStrokeColor(context, red, green, blue, 1)
        CGContextBeginPath(context)
        CGContextMoveToPoint(context, start.x, start.y)
        CGContextAddLineToPoint(context, end.x, end.y)
        CGContextSetLineCap(context, CGLineCap.Round)
        CGContextStrokePath(context)
        // obtain a UIImage object from the context
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        // Set the UIImageView's image to the new, generated image
        canvas.image = newImage

    }
    
    override func touchesMoved(touches: Set<UITouch>,
        withEvent event: UIEvent?) {
            if let touch = touches.first {
                let end = touch.locationInView(canvas)
                if let start = self.start {
                    drawFromPoint(start, toPoint: end)
                }
                self.start = end
            }
    }

    override func touchesBegan(touches: Set<UITouch>,
        withEvent event: UIEvent?) {
            if let touch = touches.first {
                start = touch.locationInView(canvas)
            }
    }

}

