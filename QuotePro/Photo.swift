//
//  Photo.swift
//  QuotePro
//
//  Created by Olga on 11/8/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

import Foundation
import UIKit
//import Nuke

class Photo {
    //MARK: Properties
    var photo: UIImage? = nil
    
    //MARK: Methods
    
    init() {
        let url = URL(string: "https://lorempixel.com/480/640/cats/")
        let data = try? Data(contentsOf: url!)
        photo = UIImage(data: data!)
    }
}
