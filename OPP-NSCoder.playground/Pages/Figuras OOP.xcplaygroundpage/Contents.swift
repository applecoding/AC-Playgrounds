
import SpriteKit
import XCPlayground

var gameFigure = CGSize(width: 50, height: 50)

class Figuras:SKShapeNode {
    var color:UIColor?

    init(path:CGPathRef, color:UIColor) {
        super.init()
        self.path = path
        self.strokeColor = color
        self.fillColor = color
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

class Circulo:Figuras {
    init(color: UIColor) {
        let circle = CGPathCreateMutable()
        CGPathAddArc(circle, nil, -gameFigure.width / 2, 0, gameFigure.width / 2, 0, CGFloat(2.0 * M_PI), true)
        CGPathCloseSubpath(circle)
        super.init(path: circle, color: color)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

let circulo1 = Circulo(color: UIColor.redColor())

class Cuadrado:Figuras {
    init(color: UIColor) {
        let square = CGPathCreateMutable()
        CGPathMoveToPoint(square, nil, 0, 0)
        CGPathAddLineToPoint(square, nil, gameFigure.width, 0)
        CGPathAddLineToPoint(square, nil, gameFigure.width, gameFigure.height)
        CGPathAddLineToPoint(square, nil, 0, gameFigure.height)
        CGPathAddLineToPoint(square, nil, 0, 0)
        CGPathCloseSubpath(square)
        super.init(path: square, color: color)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

let cuadrado1 = Cuadrado(color: UIColor.greenColor())

class Triangulo:Figuras {
    init(color: UIColor) {
        let triangle = CGPathCreateMutable()
        CGPathMoveToPoint(triangle, nil, gameFigure.width / 2, 0)
        CGPathAddLineToPoint(triangle, nil, gameFigure.width, gameFigure.height)
        CGPathAddLineToPoint(triangle, nil, 0, gameFigure.height)
        CGPathAddLineToPoint(triangle, nil, gameFigure.width / 2, 0)
        CGPathCloseSubpath(triangle)
        super.init(path: triangle, color: color)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

