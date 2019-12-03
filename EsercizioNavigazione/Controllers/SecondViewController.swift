//
//  SecondViewController.swift
//  EsercizioNavigazione
//
//  Created by Josh on 12/11/2019.
//  Copyright © 2019 Dstech. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    /// I componenti che stanno nello storyboard per fare un collegamento
    @IBOutlet var greetNameLabel: UILabel!
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var errorLabel: UILabel!
    
    /// Proprieta
    var greetingText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // All'apertura della pagina nascondo l'errore
        errorLabel.isHidden = true
        
        // Valorizzo il 'greetingNameLabel' con il testo che è stato passato dalla pagina precedente
        if let greeting = greetingText {
            greetNameLabel.text = greeting
        }
    }
    
    
    /// L'azione che viene chiamata nel click di un bottone 
    /// Prende il contenuto che è stato inserito nel text field e lo converte in Int
    /// Una volta convertita, controlla se il valore è maggiore uguale di 18 e minore uguale di 40, se la condizione è vera va nella seconda pagina 
    @IBAction func goToNextPageAction(_ sender: Any) {
        
        // Inizializzo una variabile di tipo string opzionale
        var errorMessage: String? = nil
        
        // Casto il valore del 'ageTextField' in Int
        // Controllando prima se non è nil, se è nil casto una string vuota
        let age = Int(ageTextField.text ?? "")
        
        
        if age == nil { // Controllo se age è nil
            errorMessage = "Dato non valido"
        } else if age! < 18 { // Controllo se age è minore di 18
            errorMessage = "Troppo giovane"
        } else if age! > 40 { // Controllo se age è maggiore di 40
            errorMessage = "Troppo vecchio"
        } else {
            errorMessage = nil
        }
    
        if let error = errorMessage { // Controllo se errorMessage è nil
            errorLabel.text = error
            errorLabel.isHidden = false
        } else {
            performSegue(withIdentifier: "goToThirdViewController", sender: nil)
        }
    }
    
}
