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

//: ## Add your code below
// dots
for x in stride(from: 0, through: 300, by: 25) {
    for y in stride(from: 0, to: 300, by: 25) {
        canvas.drawEllipse(centreX: x, centreY: y, width: 2, height: 2)
}
}
canvas.fillColor = Color.init(hue: 30, saturation: 0, brightness: 30, alpha: 100)
canvas.drawRectangle(centreX: 0, centreY: 0, width: 700, height: 400)
canvas.fillColor = Color.init(hue: <#T##Int#>, saturation: <#T##Int#>, brightness: <#T##Int#>, alpha: <#T##Int#>)
canvas.drawRectangle(centreX: 0, centreY: 0, width: 700, height: 175)
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView

