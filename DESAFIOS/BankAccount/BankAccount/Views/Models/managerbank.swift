//
//  manager.swift
//  BankAccount
//
//  Created by ICMMAC04-3F86 on 29/09/22.
//

import Foundation

class managerbank{
var banco : [Bank] = []

func addBankClient(nome: String, Débito: String, Crédito: String){
    banco.append(Bank(nomebanco: nome, SaldoDebito: Débito, SaldoCredito: Crédito))
    print(banco)
}
}
