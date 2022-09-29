//
//  mainViewController.swift
//  BankAccount
//
//  Created by ICMMAC04-3F86 on 29/09/22.
//

import UIKit

class mainViewController: UIViewController {
    var manager = managerbank()
    let MAIN = UIStoryboard(name: "Main", bundle: nil)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btAddClient(_ sender: Any) {
        let ADD_BANK: addclientViewController = MAIN.instantiateViewController(withIdentifier: "addClient") as! addclientViewController
        ADD_BANK.manager = manager
        self.present(ADD_BANK, animated: true, completion: nil)
        performSegue(withIdentifier: "segueAddCliente", sender: nil)
    }
    @IBAction func listClient(_ sender: Any) {
        let LIST_BANK: listclientViewController = MAIN.instantiateViewController(withIdentifier: "listClient") as! listclientViewController
        LIST_BANK.manager = manager
        self.present(LIST_BANK, animated: true, completion: nil)
        performSegue(withIdentifier: "seguelistClient", sender: nil)
    }
    @IBAction func returnMainView(voltar: UIStoryboardSegue){}

}
