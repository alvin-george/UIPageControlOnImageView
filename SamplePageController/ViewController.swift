//
//  ViewController.swift
//  SamplePageController
//
//  Created by Pushpam Group on 31/03/17.
//  Copyright © 2017 Pushpam Group. All rights reserved.
//

import UIKit
import Foundation


class ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    var imageArray:[String] = []
    
    @IBOutlet var sampleImageView: UIImageView!
    @IBOutlet var samplePageControl: UIPageControl!
    
    @IBOutlet var swipeRight: UISwipeGestureRecognizer!
    @IBOutlet var swipeLeft: UISwipeGestureRecognizer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageArray = ["launch","home","recipe","burgur"]
    }
    // here are those protocol methods with Swift syntax
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        return true
    }
    @IBAction func swipedToLeft(_ sender: Any) {
        print("swipeLeft")
        samplePageControl.currentPage += 1
        
        UIView.transition(with: sampleImageView, duration: 0.5, options: .transitionCrossDissolve, animations: {
            self.sampleImageView.image = UIImage(named: self.imageArray[self.samplePageControl.currentPage])
        }, completion: nil)
        
        
    }
    @IBAction func swipedToRight(_ sender: Any) {
        print("swipeRight")
        samplePageControl.currentPage -= 1
        
        UIView.transition(with: sampleImageView, duration: 0.5, options: .transitionCrossDissolve, animations: {
            self.sampleImageView.image = UIImage(named: self.imageArray[self.samplePageControl.currentPage])
        }, completion: nil)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}




