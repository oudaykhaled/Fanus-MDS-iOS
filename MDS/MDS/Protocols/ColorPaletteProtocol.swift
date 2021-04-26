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
    var primaryVariant: UIColor { get }
    var onPrimaryVariant: UIColor { get }
    var secondary: UIColor { get }
    var onSecondary: UIColor { get }
    var secondaryVariant: UIColor { get }
    var onSecondaryVariant: UIColor { get }
    var accent: UIColor { get }
    var onAccent: UIColor { get }
    var success: UIColor { get }
    var onSuccess: UIColor { get }
    var danger: UIColor { get }
    var onDanger: UIColor { get }
    var warning: UIColor { get }
    var onWarning: UIColor { get }
    var info: UIColor { get }
    var onInfo: UIColor { get }
    var foundation: UIColor { get }
    var onFoundation: UIColor { get }
    var surface: UIColor { get }
    var onSurface: UIColor { get }
    var onSurfaceSecondary: UIColor { get }
    var surfaceDisabled: UIColor { get }
    var shimmer: UIColor { get }
    var selected: UIColor { get }
    var seperator: UIColor { get }    
}
