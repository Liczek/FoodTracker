//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Pawel on 08.08.2016.
//  Copyright © 2016 LiczekCompany. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    //MARK: Properties
    
    var rating = 0
    var ratingButtons = [UIButton]()
    let spacing = 5
    let starCount = 5

    //MARK: Initialization
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    
    
        let filledStarImage = UIImage(named: "filledStar")
        let emptyStarImage = UIImage(named: "emptyStar")
        
        
        
    // Add 5 buttons using for-in loop
        
        for _ in 0..<starCount {
        
            let button = UIButton()
            
            button.setImage(emptyStarImage, forState: .Normal)
            button.setImage(filledStarImage, forState: .Selected)
            button.setImage(filledStarImage, forState: [.Highlighted, .Selected])
            
            button.adjustsImageWhenHighlighted = false
            
            
            
            // Add button and action
            
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(_:)), forControlEvents: UIControlEvents.TouchDown)
            ratingButtons += [button]
            addSubview(button)
            }
    }
    
    

    override func layoutSubviews()
    {
        // Set the button's width and height to a square teh size of the frame's height.
        
        let buttonSize = Int(frame.size.height)
        
        var buttonFrame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)
        
        
        // Offset each button's original by the lenght of the button plus some spacing.
        
        for (index, button) in ratingButtons.enumerate()
        {
            buttonFrame.origin.x = CGFloat(index * (buttonSize + spacing))
            button.frame = buttonFrame
        }
    }



    override func intrinsicContentSize() -> CGSize
    {
        let buttonSize = Int(frame.size.height)
        let width = (buttonSize * starCount) + (spacing * (starCount - 1))
        return CGSize(width: width, height: buttonSize)
    }
    
    // MARK: Button Action
    
    func ratingButtonTapped(buttton: UIButton)
    {
        print("Button pressed 👍🏻")
    }
        
        
    
    

}
