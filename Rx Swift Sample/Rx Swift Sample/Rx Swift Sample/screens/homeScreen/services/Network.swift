//
//  Network.swift
//  Rx Swift Sample
//
//  Created by JETS Mobile Lab - 9 on 5/28/19.
//  Copyright © 2019 Abd elrhman. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import RxAlamofire
class network: networkProtocol
{
    let disposeBag = DisposeBag()
    var presenter : presenterProtocol?
    
    
    init()
    {
        
    }
    func setDelegate(delegate: presenterProtocol)
    {
       print("Inside network setDelegate")
       self.presenter = delegate
    }
    
    func getData(url: String)
    {
        RxAlamofire.requestJSON(.get, url)
            .debug()
            .subscribe(onNext: { [weak self] (r, json) in
                if let responce = json as? [String: AnyObject]
                {
                    let currency = Country(base: responce["base"] as! String, rates: responce["rates"] as! [String : Double], date: responce["date"] as! String)
                    self?.presenter?.setdict(dic: currency.rates)
                    
                }
                }, onError: { [weak self] (error) in
                    print("")
                    print(error.localizedDescription)
            })
            .disposed(by: disposeBag)
    }
    
   
}
