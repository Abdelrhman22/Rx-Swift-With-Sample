//
//  SearchViewController.swift
//  Rx Swift Sample
//
//  Created by JETS Mobile Lab - 9 on 5/27/19.
//  Copyright © 2019 Abd elrhman. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
class SearchViewController: UIViewController {
    
     let disposeBag = DisposeBag()
    
    @IBOutlet weak var autoSearchLabel: UILabel!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var searchTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       let search = searchTF.rx.controlEvent(.editingDidEndOnExit).asObservable()
        .subscribe( onNext :{ [weak self]  in
            self?.myLabel.text = "We are searching for"
            self?.myLabel.text?.append(self?.searchTF.text ?? "")
        })
        //********************************************************
        self.searchTF.rx.controlEvent(.allEditingEvents).asObservable()
            .map{_ in self.searchTF.text!}.debounce(0.5, scheduler : MainScheduler.asyncInstance)
            .subscribe({(str) in
            self.autoSearchLabel.text = "search for \(str)" }).disposed(by: disposeBag)
    }
    

}
