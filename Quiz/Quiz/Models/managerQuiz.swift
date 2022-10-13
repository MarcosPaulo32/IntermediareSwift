//
//  managerQuiz.swift
//  Quiz
//
//  Created by ICMMAC06-7A13 on 11/10/22.
//

import Foundation

class managerQuiz{
    var quizes: [Quiz] = [
        Quiz(pergunta:  "1+1?", opcoes: ["1", "2", "3", "4"], resposta: 1),
        Quiz(pergunta:  "Qual o último nome de Obama?", opcoes: ["Paulo", "Silva", "Care", "Obama"], resposta: 3),
        Quiz(pergunta:  "Em que ano aconteceu a Segunda Guerra Mundial?", opcoes: ["1880", "1910", "1914", "1934"], resposta: 2),
        Quiz(pergunta:  "Qual é o valor da metade da metade do número 20?", opcoes: ["10", "4", "5", "2,5"], resposta: 2),
        Quiz(pergunta:  "Há um rato entre dois ratos, um rato atrás de um rato e um rato na frente de outro rato. De quantos ratos estamos falando?", opcoes: ["3", "5", "7", "2"], resposta: 0)]
    
    var cont = -1
    func reloadQuiz() -> Quiz{
        cont = cont + 1
        return quizes[cont]
}

}
