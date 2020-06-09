//
//  String+Ext..swift
//  Scanner
//
//  Created by a.ghezal on 08.06.2020.
//  Copyright © 2020 a.ghezal. All rights reserved.
//

import Foundation

extension String {
    
    mutating func numberFormated() -> String {
        
        guard self.count == 16 else { return self }
        for i in 1...3 {
            self.insert(" ", at: self.index(startIndex, offsetBy: -1 + (i * 5)))
        }
        
        return self
    }
    
}
