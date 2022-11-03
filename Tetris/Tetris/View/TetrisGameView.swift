import SwiftUI

struct TetrisView: View{
    @ObservedObject var jogoTetris = TetrisGameViewModel()
    
    var body: some View{
        TetrisGameBoardView(jogoTetris: jogoTetris)
    }
}

struct TetrisGameBoardView: View{
    @ObservedObject var jogoTetris: TetrisGameViewModel
    
    var body: some View{
        GeometryReader { (geometry: GeometryProxy) in
            return self.createBoard(boundingRect: geometry.size)
        }
        .gesture(jogoTetris.getMoveGesture())
        .gesture(jogoTetris.getRotateGesture())
}
    func createBoard(boundingRect: CGSize) -> some View{
        let columns = self.jogoTetris.numColumns
        let rows = self.jogoTetris.numRows
        let blockSize = min(boundingRect.width / CGFloat(columns), boundingRect.height / CGFloat(rows))
        let xoffset = (boundingRect.width - blockSize * CGFloat(columns)) / 2
        let yoffset = (boundingRect.height - blockSize * CGFloat(rows)) / 2
        
        return ForEach(0...columns-1, id: \.self) { (column: Int) in
            ForEach(0...rows-1, id: \.self) { (row: Int) in
                Path { path in
                    let x = CGFloat(column) * blockSize + xoffset
                    let y = boundingRect.height - (CGFloat(row+1) * blockSize + yoffset)
                    path.addRect(CGRect(x: x, y: y, width: blockSize, height: blockSize))
                }
                .fill(self.jogoTetris.gameBoard[column][row].color)
            }
        }
    }
}

struct TetrisGameView_Previews: PreviewProvider{
static var previews: some View{
    TetrisView()
}
}
