//picture of di
//  listStudentsViewController.swift
//  chooseStudent
//
//  Created by ICMMAC04-3F86 on 28/09/22.
//

import UIKit

class listStudentsViewController: UIViewController {
    @IBOutlet weak var nome: UILabel!
    @IBOutlet weak var serie: UILabel!
    @IBOutlet weak var nota: UILabel!
    @IBOutlet weak var proximo: UIButton!
    @IBOutlet weak var beck: UIButton!
    
    var cont = 0
    var student: Student!
    
    var manager = managerStudent()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        beck.isHidden = true
        proximo.isHidden = true
        

        if manager.escola.count > 0{
            nome.text = manager.escola[0].nomeStudent
            serie.text = manager.escola[0].serieStudent
            nota.text = manager.escola[0].notaStudent
            proximo.isHidden = false
        }
    }
    @IBAction func nekist(_ sender: Any) {
    cont = cont + 1
        student = manager.listStudent(index: cont)
        nome.text = student.nomeStudent
        serie.text = student.serieStudent
        nota.text = student.notaStudent
        beck.isHidden = false
        
        if (cont+1) == manager.escola.count{
            proximo.isHidden = true
        }
    }
    @IBAction func voltar(_ sender: Any) {
        cont = cont - 1
        student = manager.listStudent(index: cont)
        nome.text = student.nomeStudent
        serie.text = student.serieStudent
        nota.text = student.notaStudent
        proximo.isHidden = false
        
        if cont < 1 {
            beck.isHidden = true
        }
        }
    }
    
