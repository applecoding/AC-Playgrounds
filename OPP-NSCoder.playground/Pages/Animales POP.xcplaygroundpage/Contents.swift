
import Foundation

enum Comida {
    case herviboro, carnivoro, omnivoro
}

enum tipoRaza {
    case labrador, doberman
}

protocol Animal {
    var numeroPatas:Int {get}
    var alimentacion:Comida {get}
    
    func andar()
}

protocol Hablador {
    var sonido:String {get set}
    func hablar()
}

extension Hablador {
    func hablar() {
        print(sonido)
    }
}

protocol Raza {
    var raza:tipoRaza {get}
}

struct Leon:Animal, Hablador {
    var sonido: String
    var numeroPatas: Int
    var alimentacion: Comida
    
    func andar() {
        // Algo
    }
}

struct Jirafa:Animal {
    var numeroPatas: Int
    var alimentacion: Comida
    
    func andar() {
        
    }
}

struct Perro:Animal, Hablador, Raza {
    var sonido: String
    var numeroPatas: Int
    var alimentacion: Comida
    var raza: tipoRaza
    
    func hablar() {
        print("Diga: \(sonido)")
    }
    
    func andar() {
        
    }
}

var perro1 = Perro(sonido: "Guau", numeroPatas: 4, alimentacion: .omnivoro, raza: .doberman)

perro1.hablar()
