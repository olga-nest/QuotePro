//
//  HomeScreenViewController.swift
//  QuotePro
//
//  Created by Olga on 11/8/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

protocol PassingQuotes {
    func passQuotes() -> Array<Quote>
}

import UIKit


class HomeScreenViewController: UITableViewController {
    
    //MARK: Properties
    var savedQuotes = [Quote]()
    var delegate : PassingQuotes?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = QuoteBilderViewController()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        savedQuotes = (delegate?.passQuotes())!
    }
    
    //MARK: Table view
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return savedQuotes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "quoteCell", for: indexPath) as? QuoteTableViewCell
            else {
                fatalError("The dequeued cell is not an instance of QuoteTableViewCell")
        }
        
        let quote = savedQuotes[indexPath.row]
       // cell.quote = quote
        cell.quoteTextLabel.text = quote.quoteText
        cell.quoteAuthorLabel.text = quote.quoteAuthor
        cell.quoteImageView.image = quote.quotePhoto
        
        return cell
    }
    
    @IBAction func unwindToHomeScreen(sender: UIStoryboardSegue) {
        
        if let sourceViewController = sender.source as? QuoteBilderViewController,  let newQuote = sourceViewController.awesomeQuote {
            
            
            
//            if let selectedIndexPath = tableView.indexPathForSelectedRow {
//
//                savedQuotes[selectedIndexPath.row] = newQuote
//                tableView.reloadRows(at: [selectedIndexPath], with: .none)
//            } else {
                //Add a new quote
                let newIndexPath = IndexPath(row: savedQuotes.count, section: 0)
                savedQuotes.append(newQuote)
                tableView.insertRows(at: [newIndexPath], with: .automatic)
//            }
            
            
        }
    }

}
