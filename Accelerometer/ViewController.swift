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
    //setting the montion manager into a var.
    var motionManager = CMMotionManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        //how offten to should send an update, 0.2 millerseconds
        motionManager.accelerometerUpdateInterval = 0.2
        //starts looking for movement and puts it into a myData var
        motionManager.startAccelerometerUpdates(to: OperationQueue.current!) { (data, error) in
            if let myData = data
            
            {
                //if there is more than one peice of data do something.
            if myData.acceleration.x > 1
            {
                print ("Do something")
                }
        }
    }
}
}

