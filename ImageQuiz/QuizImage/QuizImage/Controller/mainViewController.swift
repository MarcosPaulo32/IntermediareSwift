//
//  mainViewController.swift
//  QuizImage
//
//  Created by ICMMAC07-13C3 on 08/11/22.
//

import UIKit

class mainViewController: UIViewController {
    
    @IBOutlet var btQuizes: [UIButton]!
    var manager = managerQuiz()
    let MAIN = UIStoryboard(name: "Main", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btQuizes(_ sender: UIButton) {
        let VIEW_QUIZ:quizViewController = MAIN.instantiateViewController(withIdentifier: "Quiz")
        as! quizViewController
        manager.index = btQuizes.firstIndex(of: sender) ?? 0
        VIEW_QUIZ.manager = manager
        present(VIEW_QUIZ, animated: true)
        performSegue(withIdentifier: "segueQuiz", sender: nil)
    }
    @IBAction func returnMainView(segue:UIStoryboardSegue){}
}
