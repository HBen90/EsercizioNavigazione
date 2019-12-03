//
//  FirstViewController.swift
//  EsercizioNavigazione
//
//  Created by Josh on 12/11/2019.
//  Copyright © 2019 Dstech. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    /// Il text field che sta nello storyboard
    @IBOutlet var nameTextField: UITextField!
    
    /// Il metodo del View Controller che scatta quando finisce di caricare il View Controller
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// Per preparare i segue che vengono attivati
    ///
    /// - Parameters:
    ///   - segue: il segue che è stato attivato
    ///   - sender: Il contenuto che deve passare
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let secondVC = segue.destination as? SecondViewController {
            
            //Controllo se il contenuto di nameTextField non è nil
            if let name = nameTextField.text {
                // Valorizzo la variabile 'greetingText' che sta nel second view controller
                secondVC.greetingText = "Ciao \(name)"
            }
        }
    }
    
    /// Unwind Method
    ///
    /// - Parameter unwindSegue: segue per fare l'unwind
    @IBAction func unwindToFirst(_ unwindSegue: UIStoryboardSegue) {
        //nameTextField.isHidden = true
    }
//git
}
