//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var resize: UIButton!
    
    @IBOutlet var picWindow: UIImageView!
    
    var didTransform = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func expandButtonTapped(sender: AnyObject) {
        
        if self.didTransform == false {
            animateEnlarge()
            self.didTransform = true}
        else {
            animateDefault()
            self.didTransform = false
            }
        
        
        
        
    }
    
    func animateEnlarge() {
        UIView.animateKeyframesWithDuration(0.25, delay: 0.0, options: [.CalculationModeLinear] , animations: {
            
            self.picWindow.transform = CGAffineTransformMakeScale(1.00, 0.95)
            self.view.bringSubviewToFront(self.resize)
            self.view.layoutIfNeeded()

            
        }) { (completed) in
            UIView.animateKeyframesWithDuration(0.75, delay: 0.0, options: [.CalculationModeLinear], animations: {self.picWindow.transform = CGAffineTransformMakeScale(1.0, 2.00)}, completion: nil)
            
        }
        
    }
    
    func animateDefault() {
        UIView.animateKeyframesWithDuration(0.25, delay: 0.0, options: [.CalculationModeLinear] , animations: {
            
            self.picWindow.transform = CGAffineTransformMakeScale(1.00, 2.15)
            self.view.bringSubviewToFront(self.resize)
            self.view.layoutIfNeeded()}) { (completed) in
                UIView.animateKeyframesWithDuration(0.75, delay: 0.15, options: [.CalculationModeLinear], animations: {self.picWindow.transform = CGAffineTransformMakeScale(1.0, 1.0)}, completion: nil)
        }
        
    }
    
}

