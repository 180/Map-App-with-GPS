//
//  InterfaceController.swift
//  MapApp2 WatchKit Extension
//
//  Created by Maciej Stanik on 26/07/2015.
//  Copyright (c) 2015 Maciej Stanik. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var map: WKInterfaceMap!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        
        let location = CLLocationCoordinate2D(latitude: 54.444321, longitude: 18.56)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        map.setRegion(region)
        
        map.addAnnotation(location, withPinColor: WKInterfaceMapPinColor.Green)
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
