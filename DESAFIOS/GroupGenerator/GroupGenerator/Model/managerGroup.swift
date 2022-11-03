import Foundation

class managerGroup{
    var group: [Group] = []
    
    func CreateGroup(nome: String){
        group.append(Group(name: nome.self))
    }
    
    func excluirGrupo(inde: Int){
        group.remove(at: inde)
    }
    
    func Quantidade() -> Int {
        return group.count
    }
    
    func ListParticipant(index: Int) -> Group{
        return group[index]
    }
}

