//
//  SecondViewController.swift
//  rxSwiftTutorial
//
//  Created by Jason on 2017. 3. 17..
//  Copyright © 2017년 JasonYoon. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa


class SecondViewController: UIViewController {

    
    @IBOutlet weak var checkLabel: UILabel!
    @IBOutlet weak var onTextPassWord: UITextField!
    @IBOutlet weak var onTextRePassword: UITextField!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordCompareCheck()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func passwordCompareCheck() {
//        onTextPassWord.rx.text.subscribe{
//            print($0)
//        }.addDisposableTo(disposeBag)
//        
//        onTextRePassword.rx.text.subscribe{
//            print($0)
//            }.addDisposableTo(disposeBag)
        let passEmptyCheck = onTextPassWord.rx.text.asObservable().map{
            $0?.isEmpty
        }
        let passReEmptyCheck = onTextRePassword.rx.text.asObservable().map{
            $0?.isEmpty
        }
        
        
        print(passEmptyCheck)
        print(passReEmptyCheck)
    }

}
