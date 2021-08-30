//
//  Angle+Convenience.swift
//
//
//  Created by Adam Fordyce on 20/11/2019.
//  Copyright © 2019 Adam Fordyce. All rights reserved.
//
import SwiftUI

private let offsetFromTopAngle = 90.degrees

public func offsetAsAngleFromTop(_ angle: Angle) -> Angle {
    angle - offsetFromTopAngle
}

public extension Angle {
    
    static func *(lhs: Angle, rhs: Double) -> Angle {
        Angle(degrees: lhs.degrees * rhs)
    }

    static func /(lhs: Angle, rhs: Double) -> Angle {
        Angle(degrees: lhs.degrees / rhs)
    }
    
    static func *(lhs: Angle, rhs: CGFloat) -> Angle {
        lhs * rhs.asDouble
    }

    static func /(lhs: Angle, rhs: CGFloat) -> Angle {
        lhs / rhs.asDouble
    }
    
    static func *(lhs: Angle, rhs: Int) -> Angle {
        lhs * rhs.asDouble
    }

    static func /(lhs: Angle, rhs: Int) -> Angle {
        lhs / rhs.asDouble
    }
}

// MARK: ----- PROPERTIES

public extension Angle {

    var fromTop: Angle {
        offsetAsAngleFromTop(self)
    }
}

// MARK: ----- TRIGONOMETRY

public extension Angle {
    
    var cos: Double {
        Darwin.cos(self.radians)
    }

    var sin: Double {
        Darwin.sin(self.radians)
    }
    
    var tan: Double {
        Darwin.tan(self.radians)
    }
}

// MARK: ----- COORDINATES

public extension Angle {
    
    static let topLeading = -135.degrees
    static let top = -90.degrees
    static let topTrailing = -45.degrees
    static let trailing = 0.degrees
    static let bottomTrailing = 45.degrees
    static let bottom = 90.degrees
    static let bottomLeading = 135.degrees
    static let leading = 180.degrees
}

// MARK: ----- CYCLES (MULTIPLES OF ONE ROTATION)

public extension Angle {
    
    static func cycles(_ cycles: Double) -> Angle {
        (360.0 * cycles).degrees
    }
    
    var cycles: Double {
        degrees / 360
    }
}

// MARK: ----- UNIT POINT CONVERSION

private let maxUnitRadius = sqrt(0.5 * 0.5 + 0.5 * 0.5).asCGFloat

private let unitPointForNamedAngle: [Angle: UnitPoint] = [

    .topLeading: .topLeading,
    .top: .top,
    .topTrailing: .topTrailing,
    .trailing: .trailing,
    .bottomTrailing: .bottomTrailing,
    .bottom: .bottom,
    .bottomLeading: .bottomLeading,
    .leading: .leading,
]

public extension Angle {
    
    var asUnitPoint: UnitPoint {
        if let unitPoint = unitPointForNamedAngle[self] {
            return unitPoint
        } else {
            var offset = calcOffset(radius: maxUnitRadius, angle: self)

            if abs(offset.x) > 0.5 {
                let ratio = 0.5 / abs(offset.x)
                offset = offset.scaled(ratio)
            } else if abs(offset.y) > 0.5 {
                let ratio = 0.5 / abs(offset.y)
                offset = offset.scaled(ratio)
            }
            return offset.offset(.point(0.5, 0.5)).asUnitPoint
        }
    }
}

// MARK: ----- TO WITH FACTOR

public extension Angle {

    func to(_ destination: Angle, _ factor: CGFloat) -> Angle {
        let delta = destination.degrees - self.degrees
        return (self.degrees + delta * factor.asDouble).degrees
    }
}
