//
//  DefaultElevationPool.swift
//  MDS
//
//  Created by Hani Abdallah on 5/5/21.
//

import UIKit
import Foundation

struct DefaultElevationPool: ElevationPoolProtocol {
    var elevationNone: CGFloat = 0
    var elevationSmall: CGFloat = 4
    var elevationMedium: CGFloat = 8
    var elevationLarge: CGFloat = 15
    var elevationXLarge: CGFloat = 48
}
