//
//  ColorPaletteProtocol.swift
//  MDS
//
//  Created by guest1 on 3/10/21.
//

import UIKit
import Foundation

public protocol ColorPaletteProtocol {
    var primary: UIColor { get }
    var onPrimary: UIColor { get }
    var secondary: UIColor { get }
    var onSecondary: UIColor { get }
}
