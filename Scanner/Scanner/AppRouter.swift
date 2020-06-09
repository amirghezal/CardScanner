//
//  AppRouter.swift
//  Scanner
//
//  Created by a.ghezal on 08.06.2020.
//  Copyright © 2020 a.ghezal. All rights reserved.
//

import UIKit
import PayCardsRecognizer

class AppRouter {
    
    func start(window: UIWindow) {
        window.frame = UIScreen.main.bounds
        window.makeKeyAndVisible()
        window.rootViewController = NavController
    }
    
    func showInfoScreen(from: UIViewController, results: PayCardsRecognizerResult) {
        let vc = InfoVC
        vc.results = results
        from.navigationController?.pushViewController(vc, animated: true)
    }
    
    var NavController: UIViewController = {
        return R.Storyboards.Main.instantiateViewController(withIdentifier: R.Identifiers.NavigationController)
    }()
    
    var InfoVC: InfoVC = {
        return R.Storyboards.Main.instantiateViewController(withIdentifier: R.Identifiers.InfoVC) as! InfoVC
    }()
    
}

class R {
    //MARK: - StroryBoards
    enum Storyboards {
        static let Main = UIStoryboard(name: "Main", bundle: nil)
    }
        
    //MARK: - Identifiers
    enum Identifiers {
        static let NavigationController = "NC"
        static let InfoVC = "InfoVC"
    }
    
}
