//
//  ViewController.swift
//  NamesCompApp
//
//  Created by Karen Vardanian on 08.12.2022.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var yourNameTF: UITextField!
    @IBOutlet weak var partherNameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - segue without id
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? ResultViewController else {return}
        destinationVC.firstName = yourNameTF.text
        destinationVC.secondName = partherNameTF.text
    }
    
    
    //MARK: - segue with id
    @IBAction func resultButtonTapped() {
        performSegue(withIdentifier: "goToResult", sender: nil)
    }
}

