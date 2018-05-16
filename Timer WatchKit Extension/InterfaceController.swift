//
//  InterfaceController.swift
//  Timer WatchKit Extension
//
//  Created by Emily Horsman on 5/15/18.
//  Copyright © 2018 Emily Horsman. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var timer: WKInterfaceTimer!

    @IBOutlet var toggle: WKInterfaceButton!

    var hasStarted: Bool = false

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func handleToggle() {
        if (hasStarted) {
            self.timer.stop()
            self.toggle.setTitle("Start")
        } else {
            self.timer.setDate(Date())
            self.timer.start()
            self.toggle.setTitle("Stop")
        }

        hasStarted = !hasStarted
    }

}
