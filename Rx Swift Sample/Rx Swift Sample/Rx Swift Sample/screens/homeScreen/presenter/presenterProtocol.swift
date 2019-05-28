//
//  presenterProtocol.swift
//  Rx Swift Sample
//
//  Created by JETS Mobile Lab - 9 on 5/28/19.
//  Copyright © 2019 Abd elrhman. All rights reserved.
//

import Foundation
protocol presenterProtocol
{
    func setDelegate (delegate :viewControllerProtocol)
    func getData(url : String)
    func setRates(arr : [Rate])
    func setdict(dic : [String : Double])
}
