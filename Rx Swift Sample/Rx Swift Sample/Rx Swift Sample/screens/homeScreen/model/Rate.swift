//
//  Rate.swift
//  Rx Swift Sample
//
//  Created by JETS Mobile Lab - 9 on 5/28/19.
//  Copyright © 2019 Abd elrhman. All rights reserved.
//

import Foundation

struct Rate {
    var currency : String
    var rate : Double
    
    init()
    {
        self.currency = ""
        self.rate = 0.0
    }
    
    init(currency : String , rate : Double )
    {
        self.currency = currency
        self.rate = rate
    }
}
