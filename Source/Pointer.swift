//
//  Pointer.swift
//  Gentler
//
//  Created by Vladislav on 04.07.2018.
//

import Foundation

public enum Pointer {
    case left
    case right
    case bottom
    case top
    case top_left
    case top_right
    case bottom_left
    case bottom_right
    
    public var value:CGPoint {
        switch self {
        case .top: return CGPoint(x: 0.5, y: 0)
        case .left: return CGPoint(x: 0, y: 0.5)
        case .bottom: return CGPoint(x: 0.5, y: 1)
        case .right: return CGPoint(x: 1, y: 0.5)
        case .top_left: return CGPoint(x: 0, y: 0)
        case .top_right: return CGPoint(x: 1, y: 0)
        case .bottom_left: return CGPoint(x: 0, y: 1)
        case .bottom_right: return CGPoint(x: 1, y: 1)
        }
    }
}
