//: [Previous](@previous)
//: # Assignment
//: Return to the plans you made at the start of this course for an image that used elements of repetition.
//:
//: Mr. Gordon will be emailing this to you.
//:
//: Reproduce that image in code, below.
//:
//: Remember to commit and push your work often.
//:
//: ![commit_menu](commit_menu.png "Commit")
//:
//: ## Required code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

//: ## Add your code below

// Create canvas
let canvas = Canvas(width: 500, height: 500)

// No fill
//canvas.drawShapesWithFill = false
//
//// Loop to set horizontal position
//for x in stride(from: 50, through: 450, by: 100) {
//
//    // Loop to set vertical position
//    for y in stride(from: 450, through: 50, by: -100) {
//
//        // Draw five squares
//        for size in stride(from: 100, through: 20, by: -20) {
//              canvas.drawRectangle(centreX: x, centreY: y, width: size, height: size)
//        }
//    }
//}

// assignment (dots)

// lines
canvas.drawLine(fromX: 250, fromY: 500, toX: 250, toY: 0)

for y in stride(from: 0, to: 250, by: 25) {
    canvas.drawLine(fromX: 250, fromY:y, toX: 500, toY: y+50)
    canvas.drawLine(fromX: 250, fromY:y, toX: 0, toY: y+50)
}
for y in stride(from: 0, to: 250, by: -25) {
    canvas.drawLine(fromX: y, fromY: 0, toX: 250, toY: y-50)
}
for y in stride(from: 250, to: 500, by: 25) {
    canvas.drawLine(fromX: 500, fromY:y, toX: 250, toY: y+25)
    canvas.drawLine(fromX: 0, fromY: y, toX: 250, toY: y+25)
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
