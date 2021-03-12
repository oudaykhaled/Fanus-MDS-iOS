//
//  DefaultColorPalette.swift
//  MDS
//
//  Created by guest1 on 3/10/21.
//
import UIKit
import Foundation

struct DefaultColorPalette: ColorPaletteProtocol {
    var primary: UIColor = DefaultColorPalette.getColor("primary")
    var onPrimary: UIColor = DefaultColorPalette.getColor("onPrimary")
    var secondary: UIColor = .brown
    var onSecondary: UIColor = .darkGray
    
    static func getColor(_ named: String) -> UIColor {
        UIColor(named: named, in: MDS.bundle, compatibleWith: nil)!
    }
}
