//
//  DataStruct.swift
//  GrubbyWorm
//
//  Created by Wayne on 15/8/13.
//  Copyright © 2015年 GAME-CHINA.ORG. All rights reserved.
//

import SpriteKit

enum Direction {
    case left
    case right
    case down
    case up
    
    func refect() -> Direction {
        switch self {
        case .right:
            return .left
        case .down:
            return .up
        case .left:
            return .right
        case .up:
            return .down
        }
    }
}

struct Location {
    var row: Int = 0
    var col: Int = 0
    
    func up() -> Location {
        return Location(row: self.row, col: self.col + 1)
    }
    
    func down() -> Location {
        return Location(row: self.row, col: self.col - 1)
    }
    
    func left() -> Location {
        return Location(row: self.row - 1, col: self.col)
    }
    
    func right() -> Location {
        return Location(row: self.row + 1, col: self.col)
    }
    
    func up(_ inRange: GridSizeRange) -> Location {
        if self.col == inRange.to.col {
            return Location(row: self.row, col: inRange.from.col)
        } else {
            return self.up()
        }
    }
    
    func down(_ inRange: GridSizeRange) -> Location {
        if self.col == inRange.from.col {
            return Location(row: self.row, col: inRange.to.col)
        } else {
            return self.down()
        }
    }
    
    func left(_ inRange: GridSizeRange) -> Location {
        if self.row == inRange.from.row {
            return Location(row: inRange.to.row, col: self.col)
        } else {
            return self.left()
        }
    }
    
    func right(_ inRange: GridSizeRange) -> Location {
        if self.row == inRange.to.row {
            return Location(row: inRange.from.row, col: self.col)
        } else {
            return self.right()
        }
    }
    
    func equal(_ loc: Location) -> Bool {
        return (self.row == loc.row && self.col == loc.col)
    }
}

typealias GridSize = Location

struct GridSizeRange {
    var from: GridSize
    var to: GridSize
}

struct WormInfo {
    var name: String?
    var speed: TimeInterval
    var foot: Int
    var alive: Bool
}

struct EnergyInfo {
    var total: Int
    var current: Int
    var round: Int
}
