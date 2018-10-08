//
//  BorderButton.swift
//  questionaire-app
//
//  Created by Takudzwa Mhonde on 2018-09-15.
//  Copyright © 2018 Takudzwa Mhonde. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib(); // called right from the beginning.
        layer.borderWidth = 3.0; // we can change this if we want
        layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0); // we can change this if we want
        
    }

}
