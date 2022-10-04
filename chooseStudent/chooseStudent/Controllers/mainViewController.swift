//
//  mainViewController.swift
//  chooseStudent
//
//  Created by ICMMAC04-3F86 on 28/09/22.
//

import UIKit

class mainViewController: UIViewController {
    var manager = managerStudent()
    let MAIN = UIStoryboard(name: "Main", bundle: nil)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btShowAddStudent(_ sender: Any) {
        let ADD_STUDENT: addStudentViewController = MAIN.instantiateViewController(withIdentifier: "addStudent") as! addStudentViewController
        ADD_STUDENT.manager = manager
        self.present(ADD_STUDENT, animated: true, completion: nil)
        performSegue(withIdentifier: "segueAddStudent", sender: nil)
        
    }
    
    @IBAction func btShowListStudent(_ sender: Any) {
        let LIST_STUDENTS: listStudentsViewController = MAIN.instantiateViewController(withIdentifier: "listStudents") as! listStudentsViewController
        LIST_STUDENTS.manager = manager
        self.present(LIST_STUDENTS, animated: true, completion: nil)
        performSegue(withIdentifier: "segueListStudents", sender: nil)    }
    
    @IBAction func ReturnMainView(voltar: UIStoryboardSegue){}
}
