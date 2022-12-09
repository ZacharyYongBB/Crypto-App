//
//  String.swift
//  CryptoSwift
//
//  Created by Zachary on 9/12/22.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression)
    }
    
}
