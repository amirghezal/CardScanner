//
//  InfoVc.swift
//  Scanner
//
//  Created by a.ghezal on 08.06.2020.
//  Copyright © 2020 a.ghezal. All rights reserved.
//

import UIKit
import PayCardsRecognizer

class InfoVC: UIViewController {
    
    var results: PayCardsRecognizerResult?
    
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var holderTextField: UITextField!
    @IBOutlet weak var datetextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        numberTextField.text = results?.recognizedNumber?.numberFormated()
        holderTextField.text = results?.recognizedHolderName
        guard let month = results?.recognizedExpireDateMonth, let year = results?.recognizedExpireDateYear else {
            return
        }
        datetextField.text = "\(month)/\(year)"
    }
 
}
