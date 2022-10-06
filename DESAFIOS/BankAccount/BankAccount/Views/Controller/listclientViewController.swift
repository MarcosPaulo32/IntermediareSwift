//
//  listclientViewController.swift
//  BankAccount
//
//  Created by ICMMAC04-3F86 on 29/09/22.
//

import UIKit

class listclientViewController: UIViewController {
    @IBOutlet weak var lbnome: UILabel!
    @IBOutlet weak var lbdebito: UILabel!
    @IBOutlet weak var lbcredito: UILabel!
    @IBOutlet weak var BTir: UIButton!
    @IBOutlet weak var BTvoltar: UIButton!
    
    var cont = 0
    var contadobanco: Bank!
    
    var manager = managerbank()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        BTir.isHidden = true
        BTvoltar.isHidden = true
        
        if manager.banco.count > 0{
            lbnome.text = manager.banco[0].nomebanco
            lbdebito.text = manager.banco[0].SaldoDebito
            lbcredito.text = manager.banco[0].SaldoCredito
            BTir.isHidden = false
        }
}
    @IBAction func proximo(_ sender: Any) {
        cont = cont + 1
        contadobanco = manager.listclient(index: cont)
        lbnome.text = contadobanco.nomebanco
        lbdebito.text = contadobanco.SaldoDebito
        lbcredito.text = contadobanco.SaldoCredito
        BTvoltar.isHidden = false
        
        if (cont+1) == manager.banco.count{
            BTir.isHidden = true
        }
    }
    @IBAction func voltar(_ sender: Any) {
        cont = cont - 1
        contadobanco = manager.listclient(index: cont)
        lbnome.text = contadobanco.nomebanco
        lbdebito.text = contadobanco.SaldoDebito
        lbcredito.text = contadobanco.SaldoCredito
        BTir.isHidden = false
        
        if cont < 1{
            BTvoltar.isHidden = true
        }
    }
}
