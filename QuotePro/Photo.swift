//
//  Photo.swift
//  QuotePro
//
//  Created by Olga on 11/8/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

import Foundation
import UIKit

class Photo {
    //MARK: Properties
    var photo: UIImage? = nil
    
    //MARK: Methods
    
    init() {
        let url = URL(string: "https://lorempixel.com/480/640/abstract/")
        let data = try? Data(contentsOf: url!)
        photo = UIImage(data: data!)
    }
}
