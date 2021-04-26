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
    var secondary: UIColor = DefaultColorPalette.getColor("secondary")
    var onSecondary: UIColor = DefaultColorPalette.getColor("onSecondary")
    var primaryVariant: UIColor = DefaultColorPalette.getColor("primaryVariant")
    var onPrimaryVariant: UIColor = DefaultColorPalette.getColor("onPrimaryVariant")
    var secondaryVariant: UIColor = DefaultColorPalette.getColor("secondaryVariant")
    var onSecondaryVariant: UIColor = DefaultColorPalette.getColor("onSecondaryVariant")
    var accent: UIColor  = DefaultColorPalette.getColor("accent")
    var onAccent: UIColor = DefaultColorPalette.getColor("onAccent")
    var success: UIColor = DefaultColorPalette.getColor("success")
    var onSuccess: UIColor = DefaultColorPalette.getColor("onSuccess")
    var danger: UIColor = DefaultColorPalette.getColor("danger")
    var onDanger: UIColor = DefaultColorPalette.getColor("onDanger")
    var warning: UIColor = DefaultColorPalette.getColor("warning")
    var onWarning: UIColor = DefaultColorPalette.getColor("onWarning")
    var info: UIColor = DefaultColorPalette.getColor("info")
    var onInfo: UIColor = DefaultColorPalette.getColor("onInfo")
    var foundation: UIColor = DefaultColorPalette.getColor("foundation")
    var onFoundation: UIColor = DefaultColorPalette.getColor("onFoundation")
    var surface: UIColor = DefaultColorPalette.getColor("surface")
    var onSurface: UIColor = DefaultColorPalette.getColor("onSurface")
    var onSurfaceSecondary: UIColor = DefaultColorPalette.getColor("onSurfaceSecondary")
    var surfaceDisabled: UIColor = DefaultColorPalette.getColor("surfaceDisabled")
    var shimmer: UIColor = DefaultColorPalette.getColor("shimmer")
    var selected: UIColor = DefaultColorPalette.getColor("selected")
    var seperator: UIColor = DefaultColorPalette.getColor("seperator")
    
    static func getColor(_ named: String) -> UIColor {
        UIColor(named: named, in: MDS.bundle, compatibleWith: nil)!
    }
}
