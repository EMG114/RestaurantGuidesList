//
//  ViewController.swift
//  RestaurantList
//
//  Created by Erica on 10/23/16.
//  Copyright © 2016 Erica Gutierrez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        GooglePlacesAPIClient().searchListMichelinRestaurant(location: "NYC"){success in
            
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

