//
//  MainViewController.swift
//  GroupGenerator
//
//  Created by ICMMAC06-7A13 on 25/10/22.
//

import UIKit

class MainViewController: UIViewController {

    var manager = managerGroup()
    let MAIN = UIStoryboard(name: "Main", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btListParticipant(_ sender: Any) {
        let LIST_PARTICIPANT: AddName = MAIN.instantiateViewController(withIdentifier: "AddName") as! AddName
        LIST_PARTICIPANT.manager = manager
        self.present(LIST_PARTICIPANT, animated: true, completion: nil)
        performSegue(withIdentifier: "segueAddName", sender: nil)
    }
    @IBAction func btGerargrupo(_ sender: Any) {
        let GERAR_GRUPO: CreateGroup = MAIN.instantiateViewController(withIdentifier: "CreateGroup") as! CreateGroup
        GERAR_GRUPO.manager = manager
        self.present(GERAR_GRUPO, animated: true, completion: nil)
        performSegue(withIdentifier: "", sender: nil)
    }
    @IBAction func returnMainView(voltar: UIStoryboardSegue){}
}
