//
//  LYMapElement.swift
//  LYFunnyMaze
//
//  Created by lly on 2017/1/5.
//  Copyright © 2017年 franklin. All rights reserved.
//

import Foundation

enum LYDirection : Int {//0-12
    case LYDirectionAll = 0
    
    case LYDirectionUp = 1
    case LYDirectionUpLeft = 2
    case LYDirectionUpRight = 3
    
    case LYDirectionDown = 4
    case LYDirectionDownLeft = 5
    case LYDirectionDownRight = 6
    
    case LYDirectionLeft = 7
    case LYDirectionLeftUp = 8
    case LYDirectionLeftDown = 9
    
    case LYDirectionRight = 10
    case LYDirectionRightUp = 11
    case LYDirectionRightDown = 12
}

enum LYMapDraw : Int {//0-15
    case LYZero = 0
    
    case LYOneUp = 1
    case LYOneDown = 2
    case LYOneLeft = 3
    case LYOneRigt = 4
    
    case LYTwoLR = 5
    case LYTwoUD = 6
    case LYTwoLU = 7
    case LYTwoLD = 8
    case LYTwoRU = 9
    case LYTwoRD = 10
    
    case LYThreeExceptU = 11
    case LYThreeExceptD = 12
    case LYThreeExceptL = 13
    case LYThreeExceptR = 14
    
    case LYFour = 15
}


class LYMapElement:NSObject{
    var draw:LYMapDraw = LYMapDraw.LYZero;
    var x:Int = 0
    var y:Int = 0
    
    //MARK : - override
    init(x1:Int,y1:Int) {
        super.init()
        x = x1
        y = y1
    }
    
    func testMap(size:Int8) -> Array<Array<LYMapElement>> {
        var array = [[LYMapElement]]()
        for x in 0...9{
            var subArray = [LYMapElement]()
            for y in 0...9{
                subArray.append(radomInstance(x: x,y: y))
            }
            array.append(subArray)
        }
        
        return array
    }
    
    func radomInstance(x:Int,y:Int) -> LYMapElement {
        let instace = LYMapElement.init(x1: x,y1: y)
        let radom = arc4random()%16
        instace.draw = LYMapDraw(rawValue: Int(radom))!
        
        return instace
    }
    
}
