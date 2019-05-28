//
//  Country.swift
//  Rx Swift Sample
//
//  Created by JETS Mobile Lab - 9 on 5/28/19.
//  Copyright © 2019 Abd elrhman. All rights reserved.
//

import Foundation

// MARK: - Country
struct Country: Codable
{
    let base: String
    let rates: [String: Double]
    let date: String
    
    init(base : String , rates : [String: Double] , date: String)
    {
        self.base = base
        self.rates = rates
        self.date = date
    }
}
