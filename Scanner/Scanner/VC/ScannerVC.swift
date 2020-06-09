//
//  ScannerVC.swift
//  Scanner
//
//  Created by a.ghezal on 08.06.2020.
//  Copyright © 2020 a.ghezal. All rights reserved.
//

import UIKit
import PayCardsRecognizer

class ScannerVC: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    
    var recognizer: PayCardsRecognizer!
    var router = AppRouter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recognizer = PayCardsRecognizer(delegate: self, resultMode: .async, container: containerView, frameColor: .magenta)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        recognizer.startCamera()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        recognizer.stopCamera()
    }
    
}
extension ScannerVC: PayCardsRecognizerPlatformDelegate {
    
    func payCardsRecognizer(_ payCardsRecognizer: PayCardsRecognizer, didRecognize result: PayCardsRecognizerResult) {
        if result.isCompleted {
            router.showInfoScreen(from: self, results: result)
        }
    }
    
}
