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
    
    
    
    //MARK: - segue without id
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? ResultViewController else {return}
        destinationVC.firstName = yourNameTF.text
        destinationVC.secondName = partherNameTF.text
    }
    
    
    //MARK: - segue with id
    @IBAction func resultButtonTapped() {
        if yourNameTF.text != "" && partherNameTF.text != "" {
            performSegue(withIdentifier: "goToResult", sender: nil)
        } else {
            showAler(title: "Write names", message: "You can't go fordher witout a names")
            return
        }
    }
    //MARK: - sugue back to first VC
    @IBAction func unwindSegueToFirstVC(segue: UIStoryboardSegue) {
        yourNameTF.text = ""
        partherNameTF.text = ""
    }
    
}


extension FirstViewController {
    private func showAler(title: String, message: String) -> Void {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension FirstViewController: UITextFieldDelegate {
    override func  touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == yourNameTF {
            partherNameTF.becomeFirstResponder()
        } else {
            resultButtonTapped()
        }
        return true
    }
}
