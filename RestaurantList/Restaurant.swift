//
//  Restaurant.swift
//  RestaurantList
//
//  Created by Erica on 10/23/16.
//  Copyright © 2016 Erica Gutierrez. All rights reserved.
//

import Foundation


struct Restaurant {
    
var address:String   //"13 E 37th St, New York, NY 10016, United States";
    
   // location =
  //  lat = "40.75010519999999";
  //  lng = "-73.98208199999999";
      
 
var name: String  //"Caf\U00e9 China";
var guideType: String //michelin, zagat
    
var open_now: Int
var photos: String //hmtl
                
    //"<a href=\"https://maps.google.com/maps/contrib/107154674965927050977/photos\">Caf\U00e9 China</a>"
  


var place_id: String  //"ChIJhXTKrQBZwokRDA7Vijnq1AE"
var price_level: Int
var rating:String 




}
