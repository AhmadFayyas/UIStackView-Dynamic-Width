//
//  ViewController.swift
//  answer
//
//  Created by Genie9 on 5/21/17.
//  Copyright © 2017 Genie9. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 5
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Rating Label
        let ratingLabel = UILabel()
        ratingLabel.font = UIFont.systemFont(ofSize: 17.0)
        ratingLabel.text  = "Rating"
        
        // Text Label
        let numberLabel = UILabel()
        //numberLabel.backgroundColor = UIColor.red
        numberLabel.font = UIFont.systemFont(ofSize: 12.0)
        numberLabel.textColor = UIColor.gray
        
        numberLabel.text = "(1234)"
        
        // Stack View
        stackView.addArrangedSubview(ratingLabel)
        stackView.addArrangedSubview(numberLabel)
        
        self.view.addSubview(stackView)
        
        // The origin of the stack view is up to you, I added it in the middle of the screen
        // for clarity... I recommend add set it up via constraints
        stackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16.0).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        ratingLabel.text  = "Dynamic Rating Label Text"
        numberLabel.text = "(Pretty LONG Number...)"
    }
}

