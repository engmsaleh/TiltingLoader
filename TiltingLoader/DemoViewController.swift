//
//  ViewController.swift
//  TiltingLoader
//
//  Created by Taylor Franklin on 8/26/14.
//  Copyright (c) 2014 Taylor Franklin. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {
    
    var tiltLoadingView: TiltingLoader!
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tiltLoadingView = TiltingLoader(frame: CGRectMake(self.view.frame.size.width/2 - 70, self.view.frame.size.height/2 - 70, 140, 140), color: UIColor.purpleColor())
        tiltLoadingView.dynamicDismissal = true
        self.view.addSubview(tiltLoadingView)
        tiltLoadingView.animateColors(false)
        var timer = NSTimer.scheduledTimerWithTimeInterval(4.0, target: self, selector: "stop", userInfo: nil, repeats: false)
        
        // TODO: add simple examples of different use cases
    }
    
    func stop() {
        tiltLoadingView.hide()
        
//        var animator = UIDynamicAnimator(referenceView: self.view)
//        
//        var gravityBehavior = UIGravityBehavior(items: [tiltLoadingView])
//        gravityBehavior.gravityDirection = CGVectorMake(0, 10)
//        animator.addBehavior(gravityBehavior)
//        
//        var itemBehaviour = UIDynamicItemBehavior(items: [tiltLoadingView])
//        var negate = -M_PI_2
//        itemBehaviour.addAngularVelocity(CGFloat(negate), forItem: tiltLoadingView)
//        animator.addBehavior(itemBehaviour)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

