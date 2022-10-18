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
    override func viewDidLoad() {
        super.viewDidLoad()
print(numberCorrect, numberWrong)
    }
    @IBAction func returnmainView(segue: UIStoryboardSegue){}

    

}
