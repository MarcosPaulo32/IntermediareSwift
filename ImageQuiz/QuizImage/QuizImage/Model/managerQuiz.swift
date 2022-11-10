//
//  managerQuiz.swift
//  QuizImage
//
//  Created by ICMMAC07-13C3 on 08/11/22.
//

import Foundation

class managerQuiz{
    var quizes: [Quiz] = [Quiz(pergunta:  "Quem é puddle?", opcoes: ["pit", "pud", "rott"], respostaCorreta: 1),
Quiz(pergunta: "Quem é sphynx", opcoes: ["siames", "persa", "sphynx"], respostaCorreta: 2),
                          Quiz(pergunta: "quem é catatua?", opcoes: ["cacatua","canario", "papagaio"], respostaCorreta: 0)]
    
    var index = 0
    
    func reloadQuiz() -> Quiz {
        return quizes[index]
    }
    func isCorrectAnswer(correct: Int) -> String {
        if correct == quizes[index].respostaCorreta{
            return "Você acertou"
        }else {
            return "Você é burro"
        }
    }
}
