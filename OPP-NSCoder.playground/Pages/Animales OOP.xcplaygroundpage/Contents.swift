
import Foundation

class Animal {
    enum Comida {
        case herviboro, carnivoro, omnivoro
    }
    
    var sonido:String
    var numeropatas:Int
    var alimentacion:Comida?
    
    func hablar() {
        print(sonido)
    }
    
    func andar() {
        // Aquí haría algo que le permitiera andar
    }
    
    init(sonido:String, numeropatas:Int) {
        self.sonido = sonido
        self.numeropatas = numeropatas
    }
}

var leon = Animal(sonido: "Roar", numeropatas: 4)

class Perro:Animal {
    enum Raza {
        case Labrador, Caniche, Doberman
    }
    var raza:Raza?
}

var labrador = Perro(sonido: "Guau", numeropatas: 4)
labrador.raza = .Labrador

var jirafa = Animal(sonido: "", numeropatas: 4)


