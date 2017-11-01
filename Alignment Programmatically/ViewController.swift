//
//  ViewController.swift
//  Alignment Programmatically
//
//  Created by MacBook Pro on 20.10.16.
//  Copyright © 2016 MacBook Pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // ui obj
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    
    // first load func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // check orientation. as per orientation execute calculation
        if UIDeviceOrientationIsLandscape(UIDevice.current.orientation) {
            
            landscapeUI()
            
        } else if UIDeviceOrientationIsPortrait(UIDevice.current.orientation) {
            
            portraitUI()
            
        }
        
    }
    
    
    // in this func stored calculation for Portrait Orientation
    func portraitUI() {
        
        // Coordinates Alignment programmatically
        topLabel.frame.origin.x = self.view.frame.size.width / 1.183
        topLabel.frame.origin.y = self.view.frame.size.height / 19.61
        
        // Full Alignment
        let x_view = self.view.bounds.width / 5.6
        let y_view = self.view.bounds.height / 3
        let widht_view = self.view.bounds.width / 1.56
        let height_view = self.view.bounds.height / 5.2
        
        myView.frame = CGRect(x: x_view, y: y_view, width: widht_view, height: height_view)
        
        
        // Calculation Alignment
        let x_textfield = self.view.bounds.width / 18.75 // 20 pxls
        let width_textfield = self.view.bounds.width - x_textfield - x_textfield
        let height_textfield = self.view.bounds.height / 22.23
        
        let y_firstTxt = myView.frame.origin.y + myView.bounds.height + x_textfield
        
        firstTextField.frame = CGRect(x: x_textfield, y: y_firstTxt, width: width_textfield, height: height_textfield)
        
        
        let y_secondTxt = firstTextField.frame.origin.y + firstTextField.bounds.height + x_textfield // +20 pxls
        
        secondTextField.frame = CGRect(x: x_textfield, y: y_secondTxt, width: width_textfield, height: height_textfield)

    }
    
    
    // in this func stored calculation for Landscape Orientation
    func landscapeUI() {
        
        // Coordinates Alignment programmatically
        topLabel.frame.origin.x = self.view.frame.size.width - topLabel.bounds.width - (self.view.bounds.width / 18.75)
        topLabel.frame.origin.y = self.view.frame.size.height / 19.61
        
        // Full Alignment
        let x_view = self.view.center.x
        let y_view = self.view.bounds.width / 12.5
        let widht_view = self.view.bounds.height / 1.56
        let height_view = self.view.bounds.width / 5.2
        
        myView.center.x = x_view
        myView.frame.origin.y = y_view
        myView.frame.size = CGSize(width: widht_view, height: height_view)
        
        
        // Calculation Alignment
        let x_textfield = self.view.bounds.width / 18.75 // 20 pxls
        let width_textfield = self.view.bounds.width - x_textfield - x_textfield
        let height_textfield = self.view.bounds.height / 12.5
        
        let y_firstTxt = myView.frame.origin.y + myView.bounds.height + x_textfield
        
        firstTextField.frame = CGRect(x: x_textfield, y: y_firstTxt, width: width_textfield, height: height_textfield)
        
        
        let y_secondTxt = firstTextField.frame.origin.y + firstTextField.bounds.height + x_textfield // +20 pxls
        
        secondTextField.frame = CGRect(x: x_textfield, y: y_secondTxt, width: width_textfield, height: height_textfield)

    }
    
    
    // firstly exec when device is rotated
    override func viewWillLayoutSubviews() {
        
        // as per orientation choose function to be executed
        if UIDeviceOrientationIsLandscape(UIDevice.current.orientation) {
            
            landscapeUI()
            
        } else if UIDeviceOrientationIsPortrait(UIDevice.current.orientation) {
            
            portraitUI()
            
        }
        
        
        // as per screen resolution ... do something
        if UIScreen.main.bounds.width > 400 && UIScreen.main.bounds.height > 700 {
            
            print("HD resolution")
            
        } else {
            
            print("Non-HD resolution")
            
        }
        
    }
    
    
    
}

