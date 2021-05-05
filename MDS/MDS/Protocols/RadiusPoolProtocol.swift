//
//  RadiusPoolProtocol.swift
//  MDS
//
//  Created by Hani Abdallah on 4/23/21.
//

import UIKit
import Foundation

public protocol RadiusPoolProtocol {
    var radiusNone: CGFloat { get }
    var radiusSmall: CGFloat { get }
    var radiusMedium: CGFloat { get }
    var radiusLarge: CGFloat { get }
    var radiusMax: CGFloat { get }
}
