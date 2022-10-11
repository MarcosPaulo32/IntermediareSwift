//
//  quizViewController.swift
//  Quiz
//
//  Created by ICMMAC06-7A13 on 11/10/22.
//

import UIKit

class quizViewController: UIViewController {
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet var opcoes: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func opcoes(_ sender: UIButton) {
        let index = opcoes.firstIndex(of: sender) ?? 0
        question.text = "\(index)"
    }
    
}
