//
//  ViewController.swift
//  rxSwiftTutorial
//
//  Created by Jason on 2017. 3. 10..
//  Copyright © 2017년 JasonYoon. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    var disposeBag = DisposeBag()
    var i = 0
    
    
    @IBOutlet weak var onButtonbBeyourman: UIButton!
    @IBOutlet weak var onButtonReload: UIButton!
    
    @IBAction func onButtonAction(_ sender: Any) {
        setup()
    }
    
    @IBAction func onButtonBeYourManAction(_ sender: Any) {
//        self.performSegue(withIdentifier: "TO_PUSH1", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        beYourMan() 
    }

    func reload() {
       
    }
    
    func setup() {
//        onButtonReload.rx.tap.debounce(0.3, scheduler: MainScheduler.instance)
//            .bindNext(reload).addDisposableTo(disposeBag)
//        print((1...10).reduce(0, {$0 + $1}))
        Observable.just("Hello World").map{value in "\(value) Awesome iOS"}.subscribe{value in print(value)}.addDisposableTo(disposeBag)
    }
    
    func beYourMan()  {
//        onButtonbBeyourman.rx.tap.debounce(0.3, scheduler: MainScheduler.instance).subscribe{
//            value in print("Hello \(value)")
//        }.addDisposableTo(disposeBag)
        onButtonbBeyourman.rx.tap.debounce(0.3, scheduler: MainScheduler.instance).subscribe{
            value in self.performSegue(withIdentifier: "TO_PUSH1", sender: nil)
            }.addDisposableTo(disposeBag)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

