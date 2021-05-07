//
//  DefaultRadiusPool.swift
//  MDS
//
//  Created by Hani Abdallah on 4/23/21.
//
import UIKit
import Foundation

struct DefaultRadiusPool: RadiusPoolProtocol {
    var radiusNone: CGFloat = 0
    var radiusSmall: CGFloat = 4
    var radiusMedium: CGFloat = 8
    var radiusLarge: CGFloat = 16
    var radiusMax: CGFloat = 33
}
