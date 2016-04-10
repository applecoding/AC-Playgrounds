
import SpriteKit
import XCPlayground

var gameFigure = CGSize(width: 50, height: 50)

protocol Figuras {
    var path:CGPathRef { get set }
    var color:UIColor { get set }
    func dibujar() -> SKShapeNode
}

extension Figuras {
    func dibujar() -> SKShapeNode {
        let forma = SKShapeNode(path: path, centered: true)
        forma.strokeColor = color
        forma.fillColor = color
        return forma
    }
}

struct Circulo:Figuras {
    var path:CGPathRef
    var color:UIColor
    
    init(color:UIColor) {
        let circle = CGPathCreateMutable()
        CGPathAddArc(circle, nil, -gameFigure.width / 2, 0, gameFigure.width / 2, 0, CGFloat(2.0 * M_PI), true)
        CGPathCloseSubpath(circle)
        path = circle
        self.color = color
    }
}

var circulo1 = Circulo(color: UIColor.redColor())
let c1 = circulo1.dibujar()
circulo1.color = UIColor.blackColor()
let c2 = circulo1.dibujar()
c2.fillColor = UIColor.cyanColor()

struct Cuadrado:Figuras {
    var path:CGPathRef
    var color:UIColor
    
    init(color:UIColor) {
        let square = CGPathCreateMutable()
        CGPathMoveToPoint(square, nil, 0, 0)
        CGPathAddLineToPoint(square, nil, gameFigure.width, 0)
        CGPathAddLineToPoint(square, nil, gameFigure.width, gameFigure.height)
        CGPathAddLineToPoint(square, nil, 0, gameFigure.height)
        CGPathAddLineToPoint(square, nil, 0, 0)
        CGPathCloseSubpath(square)
        path = square
        self.color = color
    }
}

let cuadrado1 = Cuadrado(color: UIColor.cyanColor()).dibujar()

struct Triangulo:Figuras {
    var path:CGPathRef
    var color:UIColor
    
    init(color:UIColor) {
        let triangle = CGPathCreateMutable()
        CGPathMoveToPoint(triangle, nil, gameFigure.width / 2, 0)
        CGPathAddLineToPoint(triangle, nil, gameFigure.width, gameFigure.height)
        CGPathAddLineToPoint(triangle, nil, 0, gameFigure.height)
        CGPathAddLineToPoint(triangle, nil, gameFigure.width / 2, 0)
        CGPathCloseSubpath(triangle)
        path = triangle
        self.color = color
    }
}

