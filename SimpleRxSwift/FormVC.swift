//
//  FormVC.swift
//  SimpleRxSwift
//
//  Created by Mendhy Syiasko on 16/05/19.
//  Copyright © 2019 Mendhy Syiasko. All rights reserved.
//

import Foundation
import UIKit
import RxSwift

//protocol FormVCDelegate {
//    func editName(name: String)
//}

class FormVC: UIViewController {
    @IBOutlet weak var nameTF: UITextField!
    
    private let nameSbj = PublishSubject<String>()
    var nameObserver: Observable<String> {
        return nameSbj.asObservable()
    }
    
    //var delegate: FormVCDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveButtonDidPressed(_ sender: Any) {
        //self.delegate.editName(name: self.nameTF.text ?? "")
        nameSbj.onNext(getTextName())
        self.dismiss(animated: true, completion: nil)
    }
    
    func getTextName() -> String {
        return nameTF.text ?? ""
    }
}
