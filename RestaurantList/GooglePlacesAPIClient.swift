//
//  GooglePlacesAPIClient.swift
//  RestaurantList
//
//  Created by Erica on 10/23/16.
//  Copyright © 2016 Erica Gutierrez. All rights reserved.
//

import Foundation


class GooglePlacesAPIClient {
    
func searchListMichelinRestaurant(location: String, completion: @escaping(NSDictionary)->()) {

 let currentLocation = "NYC"
 let guideType = "Michelin"
    
    let urlString = "https://maps.googleapis.com/maps/api/place/textsearch/json?query=\(guideType)+restaurants+in+\(currentLocation)&key=\(Secrets.apiKey)"
    
    let url = URL(string: urlString)
    
    guard let unwrappedURL = url else {return}
    
    let session = URLSession.shared
    
    let task = session.dataTask(with: unwrappedURL) { (data, response, error) in
        
       // print(data)
    
        guard let unwrappedData = data else {return}
        
        do{
            
            //  NSJSONReadingAllowFragments
            //Specifies that the parser should allow top-level objects that are not an instance of NSArray or NSDictionary
            
            let jsonData = try JSONSerialization.jsonObject(with: unwrappedData, options: JSONSerialization.ReadingOptions.allowFragments) as? NSDictionary
            print(jsonData)
            if let restaurantDataDictionary = jsonData
            {
                completion(restaurantDataDictionary as! [String : AnyObject] as NSDictionary)
            }
        }
        catch
        {
            print(error)
            
        }
    }
    task.resume()
    
    }
}
