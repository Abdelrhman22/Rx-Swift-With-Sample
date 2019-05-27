//
//  Dao.swift
//  Rx Swift Sample
//
//  Created by JETS Mobile Lab - 9 on 5/27/19.
//  Copyright © 2019 Abd elrhman. All rights reserved.
//

import Foundation
struct DAO: Codable
{
    let base: String
    let rates: [String: Double]
    let date: String
}
