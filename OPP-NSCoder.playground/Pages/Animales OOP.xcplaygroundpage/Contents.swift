
import Foundation

class Animal {
    enum Comida {
        case herviboro, carnivoro, omnivoro
    }
    
    var sonido:String = ""
    var numeropatas = 4
    var alimentacion:Comida?
    
    func hablar() {
        print(sonido)
    }
    
    func andar() {
        // Aquí haría algo que le permitiera andar
    }
    
    init() {
        
        
    }
}

var leon = Animal()
leon.sonido = "Rugido"

class Perro:Animal {
    enum Raza {
        case Labrador, Caniche, Doberman
    }
    var raza:Raza?
}




