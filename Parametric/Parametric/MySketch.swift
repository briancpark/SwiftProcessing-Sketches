import SwiftProcessing
import UIKit

class MySketch: Sketch, SketchDelegate{
    
    var t = CGFloat(0.0)
    
    func CGFloat x1(t : CGFloat) {
        return sin(t / 10) * 100 + sin(t / 5) * 20
    }

    func y1(t : CGFloat) {
        return cos(t / 10) * 100
    }

    func x2(t : CGFloat) {
        return sin(t / 10) * 200 + sin(t) * 2
    }

    func y2(t : CGFloat) {
        return cos(t / 20) * 200 + cos(t / 12) * 20
    }
    
    func setup() {
        //Launches the Sketch in app mode
        appMode()
        //Launches the Sketch in augmented reality face mode. Works on iPhone X, XR, 11, 11 Pro, and iPad Pro Remove // on the next line to enable.
        //faceMode()
        background(0, 0, 0)
        backgroundColor = nil
        clearsContextBeforeDrawing = false
    }
    
    func draw() {
        stroke(255, 255, 255)
        //strokeWeight(5)
        translate(width/2, height/2)
        point(t, t)
        t += 1
    }
}
