//
//  Quote.swift
//  QuotePro
//
//  Created by Olga on 11/8/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

import Foundation
import UIKit

class Quote {
    
    //MARK: Properties
    var quoteText: String? = nil
    var quoteAuthor: String? = nil
    var quotePhoto: UIImage? = nil
    var quoteSnapshot: UIImage? = nil
    
    init(quoteText: String, quoteAuthor: String, quoteImage: UIImage?, quoteSnapshot: UIImage?) {
        self.quoteText = quoteText
        self.quoteAuthor = quoteAuthor
        self.quotePhoto = quoteImage
        self.quoteSnapshot = quoteSnapshot
    }
    
}
