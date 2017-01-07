//
//  LYHero.swift
//  LYFunnyMaze
//
//  Created by lly on 2017/1/6.
//  Copyright © 2017年 franklin. All rights reserved.
//

import Foundation
import GameplayKit

enum LYHeroMoveDirection : Int8{
    case LYHeroMoveAll = 0
    case LYHeroMoveUP = 1
    case LYHeroMoveDown = 2
    case LYHeroMoveLeft = 3
    case LYHeroMoveRight = 4
    case LYHeroMoveNone = -1
}

class LYHero: NSObject {
    var nowLeftMapElement:LYMapElement?
    var nowRightMapElement:LYMapElement?
    
    var beforeLeftMapElement:LYMapElement?
    var beforeRightMapElement:LYMapElement?
    
    var afterLeftMapElement:LYMapElement?
    var afterRightMapElement:LYMapElement?
    
    override init() {
        super.init();
    }
    
    func moveDirection() -> LYHeroMoveDirection {
        return LYHeroMoveDirection.LYHeroMoveAll;
    }
    
    func move() {
        
    }
}
