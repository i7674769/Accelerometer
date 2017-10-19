//
//  ViewController.swift
//  Accelerometer
//
//  Created by Rebecca Hughes on 18/10/2017.
//  Copyright © 2017 Rebecca Hughes. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    var motionManager = CMMotionManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        motionManager.accelerometerUpdateInterval = 0.2
        
        motionManager.startAccelerometerUpdates(to: OperationQueue.current!) { (data, error) in
            if let myData = data
            
            {
            if myData.acceleration.x > 1
            {
                print ("Do something")
                }
        }
    }
}
}

