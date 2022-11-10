//
//  quizViewController.swift
//  QuizImage
//
//  Created by ICMMAC07-13C3 on 08/11/22.
//

import UIKit

class quizViewController: UIViewController {
    
    @IBOutlet weak var lbQuestion: UILabel!
    
    var manager = managerQuiz()
    
    var quiz:Quiz!
    
    var correct = 0
    
    @IBOutlet var btOptions: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reloadQuiz()
        
    }
    
    @IBAction func btOptions(_ sender: UIButton) {
        correct = btOptions.firstIndex(of:sender) ?? 0
        performSegue(withIdentifier: "segueResult", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let VIEW_RESULT = segue.destination as! resultViewController
        VIEW_RESULT.resultado = manager.isCorrectAnswer(correct: correct)
    }
        func reloadQuiz(){
            quiz = manager.reloadQuiz()
            lbQuestion.text = "\(quiz.pergunta)"
            for i in 0...2{
                btOptions[i].setBackgroundImage(UIImage(named: quiz.opcoes[i]), for: .normal)
            }
        }
        
    }
