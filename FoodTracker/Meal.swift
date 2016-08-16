//
//  Meal.swift
//  FoodTracker
//
//  Created by Pawel on 16.08.2016.
//  Copyright © 2016 LiczekCompany. All rights reserved.
//

import Foundation
import UIKit

class Meal {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int)
    {
        // Initialize stored properties
        
        self.name = name
        self.photo = photo
        self.rating = rating
        
        // Inizialization should fail if there is no name or if the rating is negative.
        
        if name.isEmpty || rating < 0 {
            return nil
        }
        
    }
}