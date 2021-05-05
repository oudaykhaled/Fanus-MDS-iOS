//
//  ElevationPoolProtocol.swift
//  MDS
//
//  Created by Hani Abdallah on 5/5/21.
//

import UIKit
import Foundation

public protocol ElevationPoolProtocol {
    var elevationNone: CGFloat { get }
    var elevationSmall: CGFloat { get }
    var elevationMedium: CGFloat { get }
    var elevationLarge: CGFloat { get }
    var elevationXLarge: CGFloat { get }
}
