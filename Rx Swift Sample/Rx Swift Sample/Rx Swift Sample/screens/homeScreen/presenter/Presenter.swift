//
//  Presenter.swift
//  Rx Swift Sample
//
//  Created by JETS Mobile Lab - 9 on 5/28/19.
//  Copyright © 2019 Abd elrhman. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import RxAlamofire
class Presenter: presenterProtocol
{
   
    
    var homeVC :viewControllerProtocol?
    var networkObj : networkProtocol = network()
    init()
    {}
    func setDelegate(delegate: viewControllerProtocol)
    {
       print("Inside Presenter setDelegate")
       self.homeVC = delegate
       networkObj.setDelegate(delegate: self)
    }
    
    func getData(url: String)
    {
       networkObj.getData(url: url)
    }
    
 
    func setdict(dic: [String : Double])
    {
        homeVC?.setdict(dic: dic)
    }
    
}
