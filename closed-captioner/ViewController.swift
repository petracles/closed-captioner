//
//  ViewController.swift
//  closed-captioner
//
//  Created by Jack Kelly on 10/18/19.
//  Copyright © 2019 petracles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let finalPromptLabelText = "Let's help you find the perfect caption"
    var startIdx = 0
    
    let promptLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont(name: "Arial", size: 24)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(promptLabel)
        promptLabel.frame = view.frame
        
        let displayLink = CADisplayLink(target: self, selector: #selector(handleUpdate))
        displayLink.add(to: .main, forMode: .default)
        
    }

    @objc func handleUpdate() {
        self.promptLabel.text = String(finalPromptLabelText.prefix(startIdx))
        startIdx += 1
    }
}

