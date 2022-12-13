//
//  ResultViewController.swift
//  NamesCompApp
//
//  Created by Karen Vardanian on 13.12.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var namesLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
    var firstName: String!
    var secondName: String!
    var random = Int.random(in: 1...100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        namesLabel.text = "\(firstName ?? "") and \(secondName ?? "")"
        resultLabel.text = "\(random)%"
        progressView.progress = Float(random) / 100
        
        progressView.transform = progressView.transform.scaledBy(x: 1, y: 4)
        
    }
    
    
    
    
    
    
}
