//
//  QuoteView.swift
//  QuotePro
//
//  Created by Olga on 11/8/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

import UIKit

//@IBDesignable

class QuoteView: UIView {

    var photo = Photo()
    private var contentView: UIView!
    
    @IBOutlet weak var photoView: UIImageView!
    override init(frame: CGRect) {
        // Called when view is created from code
        super.init(frame: frame)
       commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        // Called when view is created from XIB
        super.init(coder: aDecoder)
        commonInit()
    }
    
//    override func prepareForInterfaceBuilder() {
//        // Called when view is live rendered on Storyboard
//        super.prepareForInterfaceBuilder()
//       //commonInit()
//    }
//
    private func commonInit() {
        setupFromXib()
        setupView()
    }

    private func setupView() {
        let photo = Photo()
        photoView.image = photo.photo
    }

    private func setupFromXib() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "QuoteView", bundle: bundle)
        guard let view = nib.instantiate(withOwner: self, options: nil)[0] as? UIView else {
            assertionFailure("Unable to load XIB file for ReusableView")
            return
        }

        contentView = view
        contentView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(contentView)
        contentView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true

    
    }
    
    func updatePhoto() {
        setupView()
    }

}
