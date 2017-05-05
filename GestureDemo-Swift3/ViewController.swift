//
//  ViewController.swift
//  GestureDemo-Swift3
//  Copyright © 2017 iOSDevCenters. All rights reserved.
//

import UIKit

class ViewController: UIViewController  , UIGestureRecognizerDelegate , UITextFieldDelegate{
    
    
    @IBOutlet weak var viewPinch: UIView!
    var pinchGesture     = UIPinchGestureRecognizer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // PINCH Gesture
        pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.pinchedView))
        viewPinch.isUserInteractionEnabled = true
        viewPinch.addGestureRecognizer(pinchGesture)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pinchedView(sender:UIPinchGestureRecognizer){
        self.view.bringSubview(toFront: viewPinch)
        sender.view?.transform = (sender.view?.transform)!.scaledBy(x: sender.scale, y: sender.scale)
        sender.scale = 1.0
    }


}

