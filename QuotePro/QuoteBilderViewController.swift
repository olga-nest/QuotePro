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
  //  var awesomeQuote: Quote()
    var awesomeQuotes = [Quote]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    /*
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
    }
    */

    
    //MARK: Actions
    @IBAction func changePhoto(_ sender: UIButton) {
        quoteView.updatePhoto()
    }
    
    @IBAction func changeQuote(_ sender: UIButton) {
         quoteView.updateQuote()
    }
    
    @IBAction func saveQuote(_ sender: UIButton) {
        
        let text = quoteView.quoteTextLable.text
        let author = quoteView.quoteAuthorLabel.text
        
        let awesomeQuote = Quote(quoteText: text!, quoteAuthor: author!)
        awesomeQuote.quotePhoto = quoteView.photoView.image
        
        awesomeQuotes.append(awesomeQuote)
    }
}
