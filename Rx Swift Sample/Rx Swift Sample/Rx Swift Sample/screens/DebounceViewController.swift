//
//  DebounceViewController.swift
//  Rx Swift Sample
//
//  Created by JETS Mobile Lab - 9 on 5/27/19.
//  Copyright © 2019 Abd elrhman. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
class DebounceViewController: UIViewController {

    @IBOutlet weak var throttleBtn: UIButton!
    @IBOutlet weak var debounceBtn: UIButton!
    let disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        throttleBtn.rx.tap.throttle(2, scheduler : MainScheduler.asyncInstance)
            .subscribe(onNext : {(_) in
                print("tap throttleBtn")
    }).disposed(by: disposeBag)
        
        debounceBtn.rx.tap.debounce(2, scheduler : MainScheduler.asyncInstance)
            .subscribe(onNext : {(_) in
                print("tap debounceBtn")
            }).disposed(by: disposeBag)
}
    }



