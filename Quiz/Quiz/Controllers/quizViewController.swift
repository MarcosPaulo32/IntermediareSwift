//
//  quizViewController.swift
//  Quiz
//
//  Created by ICMMAC06-7A13 on 11/10/22.
//

import UIKit

class quizViewController: UIViewController {
    
    @IBOutlet weak var questão: UILabel!
    
    @IBOutlet var opcoes: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func opcoes2(_ sender: UIButton) {
        let index = opcoes.firstIndex(of: sender) ?? 0
        questão.text = "\(index)"
    }
    
}
