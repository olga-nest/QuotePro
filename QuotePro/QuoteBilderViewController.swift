//
//  QuoteBilderViewController.swift
//  QuotePro
//
//  Created by Olga on 11/8/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

import UIKit

class QuoteBilderViewController: UIViewController {
   
    

    //MARK: Properties
    @IBOutlet weak var quoteView: QuoteView!
    @IBOutlet weak var saveButton: UIButton!
    var awesomeQuote: Quote?
    var awesomeQuotes = [Quote]()
//    var quotesArr = [Quote]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
   
    //MARK: Actions
    @IBAction func changePhoto(_ sender: UIButton) {
        quoteView.updatePhoto()
    }
    
    @IBAction func changeQuote(_ sender: UIButton) {
         quoteView.updateQuote()
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        // Configure the destination view controller only when the save button is pressed.
        guard let button = sender as? UIButton, button === saveButton else {
            print("The save button was not pressed, cancelling")
            return
        }
        let text = quoteView.quoteTextLable.text
        let author = quoteView.quoteAuthorLabel.text
        let image = quoteView.photoView.image
        
        awesomeQuote = Quote(quoteText: text!, quoteAuthor: author!, quoteImage: image)

    }
}
