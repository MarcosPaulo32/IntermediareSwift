
import SwiftUI

class TetrisGameViewModel: ObservableObject
@Published var gameBoard: [[TetrisGameSquare]]
var numRows: Int
var numColumns: Int

init(numRows: Int = 23, numColumns: Int = 10){
    self.numRows = numRows
    self.numColumns = numColumns
    
    gameBoard = Array(repeating: Array(repeating: TetrisBoardSquare(color: Color.tetrisBlack), count: numRows), count: numColumns)
}
func squareTapped(column: Int, row: Int) {
    print("\(column), \(row)")
    if gameBoard[column][row].color == Color.tetrisBlack{
        gameBoard[column][row].color == Color.tetrisRed
    } else {
        gameBoard[column][row].color = Color.tetrisBlack
    }
}

struct TetrisBoardSquare{
    var color: Color
}

extension Color{
    public static let tetrisBlack = Color(red: 0/255, green: 0/255, blue: 0/255)
    public static let tetrisRed = Color(red: 0/255, green: 0/255, blue: 0/255)
}
