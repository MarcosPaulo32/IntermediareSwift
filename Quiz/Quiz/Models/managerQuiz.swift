//
//  managerQuiz.swift
//  Quiz
//
//  Created by ICMMAC06-7A13 on 11/10/22.
//

import Foundation

class managerQuiz{
    var quizes: [Quiz] = [
        Quiz(pergunta:  "Um, dois, três ou quatro?", opcoes: ["1", "2", "3", "4"], resposta: 1),
        Quiz(pergunta:  "Um, dois, três ou quatro?", opcoes: ["1", "2", "3", "4"], resposta: 1),
        Quiz(pergunta:  "Um, dois, três ou quatro?", opcoes: ["1", "2", "3", "4"], resposta: 1),
        Quiz(pergunta:  "Um, dois, três ou quatro?", opcoes: ["1", "2", "3", "4"], resposta: 1),
        Quiz(pergunta:  "Um, dois, três ou quatro?", opcoes: ["1", "2", "3", "4"], resposta: 1),]
    
    var cont = -1
    func reloadQuiz() -> Quiz{
        cont = cont + 1
        return quizes[cont]
}

}
