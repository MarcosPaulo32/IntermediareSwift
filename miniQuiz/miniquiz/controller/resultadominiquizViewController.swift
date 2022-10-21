//
//  resultadominiquizViewController.swift
//  miniquiz
//
//  Created by ICMMAC03-BEBA on 11/10/22.
//

import UIKit

class resultadominiquizViewController: UIViewController {
    @IBOutlet weak var LBAcertos: UILabel!
    @IBOutlet weak var LBerros: UILabel!
    @IBOutlet weak var pontuacao: UILabel!
 
    var numberCorrect = 0
    var numberWrong = 0
   var pontosCorrect = 0
    var pontosWrong = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        print(numberCorrect, numberWrong, pontosCorrect, pontosWrong)
        LBAcertos.text = "\(numberCorrect)"
        LBerros.text = "\(numberWrong)"
        pontuacao.text = "\(pontosCorrect - pontosWrong)"
    }
    @IBAction func returnmainView(segue: UIStoryboardSegue){}

}
