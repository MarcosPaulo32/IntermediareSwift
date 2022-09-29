//
//  addclientViewController.swift
//  BankAccount
//
//  Created by ICMMAC04-3F86 on 29/09/22.
//

import UIKit

class addclientViewController: UIViewController {
    @IBOutlet weak var tfNome: UITextField!
    @IBOutlet weak var tfDébito: UITextField!
    @IBOutlet weak var tfCrédito: UITextField!
    
    var manager = managerbank()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    @IBAction func btAddCliente(_ sender: Any) {
        manager.addBankClient(nome: tfNome.text!, Débito: tfDébito.text!, Crédito: tfCrédito.text!)
        tfNome.text = ""
        tfDébito.text = ""
        tfCrédito.text = ""
    }
    
    
}
