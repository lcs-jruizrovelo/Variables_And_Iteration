//: [Previous](@previous) / [Next](@next)
//: # Exercise
//: Say that we want to create this mountain scene on a 300x300 canvas:
//:
//: ![mountains](mountains.png "Mountains")
//:
//: At first glance this may seem like a complicated image.
//:
//: However, if we break down, or *decompose* the problem (get your whiteboard out!) it's not so bad.
//:
//: ## Required code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa

import PlaygroundSupport



// Create canvas

let canvas = Canvas(width: 300, height: 300)



for x in stride(from: 0, through: 300, by: 25)  {
    
    for y in stride(from: 0, through: 300, by: 25) {
        
        canvas.drawEllipse(centreX: x, centreY: y, width: 2, height: 2)
        
    }
    
}

canvas.fillColor = Color.init(hue: 30, saturation: 0, brightness: 25, alpha: 90)

canvas.drawRectangle(centreX: 0, centreY: 0, width: 1000, height: 250)



canvas.fillColor = Color.init(hue: 30, saturation: 0, brightness: 30, alpha: 100)

canvas.drawRectangle(centreX: 0, centreY: 0, width: 1000, height: 100)



//draw mountain peek

for i in 0...50 {
    
    canvas.drawLine(fromX: i, fromY: 125, toX: 50+i, toY: 175-i)
    
    canvas.drawLine(fromX: 100+i, fromY: 125, toX: 150+i, toY: 175-i)
    
    canvas.drawLine(fromX: 200+i, fromY: 125, toX: 250+i, toY: 175-i)
    
    
    
}

// draw lower mountains





















PlaygroundPage.current.liveView = canvas.imageView
