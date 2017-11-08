//
//  QuoteBilderViewController.swift
//  QuotePro
//
//  Created by Olga on 11/8/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

import UIKit

class QuoteBilderViewController: UIViewController {
    
    

    @IBOutlet weak var quoteView: QuoteView!


    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    /*
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
    }
    */

    @IBAction func changePhoto(_ sender: UIButton) {
        quoteView.updatePhoto()
    }
    
    @IBAction func changeQuote(_ sender: UIButton) {
    }
    
    @IBAction func saveQuote(_ sender: UIButton) {
    }
}
