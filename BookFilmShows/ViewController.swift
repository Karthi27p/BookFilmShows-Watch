//
//  ViewController.swift
//  BookFilmShows
//
//  Created by Karthi on 04/03/17.
//  Copyright © 2017 Tringapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let notification = UILocalNotification()
        notification.category = "mainCategory"
        notification.alertTitle = "My title"
        notification.alertBody = "My scheduling text"
        notification.fireDate = NSDate(timeIntervalSinceNow: 2) as Date
        notification.applicationIconBadgeNumber = 1
        notification.soundName = UILocalNotificationDefaultSoundName
        
        UIApplication.shared.scheduleLocalNotification(notification)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

