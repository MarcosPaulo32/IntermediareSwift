//
//  addGroupViewController.swift
//  GroupGenerator
//
//  Created by ICMMAC06-7A13 on 25/10/22.
//

import UIKit

class AddName: UIViewController{
    @IBOutlet weak var tfNome: UITextField!
    @IBOutlet weak var lbNome: UILabel!
    @IBOutlet weak var btAdd: UIButton!
    @IBOutlet weak var btRemove: UIButton!
    @IBOutlet weak var btIr: UIButton!
    @IBOutlet weak var btVoltar: UIButton!
    
    var cont = 0
    var Grupo: Group!
    var manager = managerGroup()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if manager.Quantidade() > 0{
            reloadParticipant()
        }
        
        btIr.isHidden = true
        btVoltar.isHidden = true
        
        if manager.group.count > 0{
            btIr.isHidden = true
        }
    }
    @IBAction func btAdd(_ sender: Any) {
        manager.CreateGroup(nome: tfNome.text!)
        tfNome.text = ""
        lbNome.text = manager.group[0].name
    }
    @IBAction func Next(_ sender: Any) {
        cont = cont + 1
        Grupo = manager.ListParticipant(index: cont)
        lbNome.text = Grupo.name
        btVoltar.isHidden = false
        
        if (cont+1) == manager.group.count{
            btIr.isHidden = true
        }
    }
    @IBAction func Return(_ sender: Any) {
        cont = cont - 1
        Grupo = manager.ListParticipant(index: cont)
        lbNome.text = Grupo.name
        btIr.isHidden = false
        
        if cont < 1 {
            btVoltar.isHidden = true
        }
    }
    @IBAction func btExcluir(_ sender: Any) {
        manager.excluirGrupo(inde: index)
        print(index)
        print(manager.Quantidade())
        
        if index < manager.Quantidade(){
            reloadParticipant()
        }
    }
    func reloadParticipant(){
        Grupo = manager.ListParticipant(index: index)
        lbNome.text = "\(Grupo.name)"
    }
    
}
