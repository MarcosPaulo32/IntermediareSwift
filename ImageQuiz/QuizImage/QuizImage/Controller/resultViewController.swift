//
//  resultViewController.swift
//  QuizImage
//
//  Created by ICMMAC07-13C3 on 08/11/22.
//

import UIKit

class resultViewController: UIViewController {

    @IBOutlet weak var lbResult: UILabel!
    var resultado = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbResult.text = "\(resultado)"
    }

}
