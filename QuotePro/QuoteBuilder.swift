//
//  QuoteBuilder.swift
//  QuotePro
//
//  Created by Olga on 11/8/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

import Foundation

class QuoteBuilder {
    
    //MARK: Properties
    static let shared = QuoteBuilder()
    
    // MARK: - Networking
    func getQuote(completionHandler:@escaping (Quote) -> Void) {
        let url = URL(string: "https://api.forismatic.com/api/1.0/?method=getQuote&lang=en&format=json")!
        let request = URLRequest(url: url)
        let sessionConfiguration = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfiguration)
        
        let task = session.dataTask(with: request as URLRequest) { (data: Data?, response: URLResponse?, error: Error?) in
            guard let data = data else {
                print("no data returned from server \(String(describing: error?.localizedDescription))")
                return
            }
            
            guard let response = response as? HTTPURLResponse else {
                print("no response returned from server \(String(describing: error))")
                return
            }
            
            guard let json = try? JSONSerialization.jsonObject(with: data, options: []) as! [String:String] else {
                print("data returned is not json, or not valid")
                return
            }
            
            guard response.statusCode == 200 else {
                // handle error
                print("an error occurred \(String(describing: json["error"]))")
                return }
            
            let quoteText = json["quoteText"]!
            let quoteAuthor = json["quoteAuthor"]!
            let quote = Quote(quoteText: quoteText, quoteAuthor: quoteAuthor)
            
            completionHandler(quote)
        }
        task.resume()
    }

}
