//
//  ViewController.swift
//  SimpleRxSwift
//
//  Created by Mendhy Syiasko on 16/05/19.
//  Copyright © 2019 Mendhy Syiasko. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! FormVC
        //destinationVC.delegate = self
        destinationVC.nameObserver
            .subscribe(onNext: { name in
            self.nameLabel.text = name
        }).disposed(by: disposeBag)
        
    }

}

//extension ViewController: FormVCDelegate {
//    func editName(name: String) {
//        self.nameLabel.text = name
//    }
//
//}

