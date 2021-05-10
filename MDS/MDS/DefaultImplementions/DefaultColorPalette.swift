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
    var neutral_00: UIColor = DefaultColorPalette.getColor("neutral_00")
    var neutral_10: UIColor = DefaultColorPalette.getColor("neutral_10")
    var neutral_20: UIColor = DefaultColorPalette.getColor("neutral_20")
    var neutral_30: UIColor = DefaultColorPalette.getColor("neutral_30")
    var neutral_40: UIColor = DefaultColorPalette.getColor("neutral_40")
    var neutral_50: UIColor = DefaultColorPalette.getColor("neutral_50")
    var neutral_60: UIColor = DefaultColorPalette.getColor("neutral_60")
    var neutral_70: UIColor = DefaultColorPalette.getColor("neutral_70")
    var neutral_80: UIColor = DefaultColorPalette.getColor("neutral_80")
    var neutral_90: UIColor = DefaultColorPalette.getColor("neutral_90")
    var neutral_100: UIColor = DefaultColorPalette.getColor("neutral_100")
        
    static func getColor(_ named: String) -> UIColor {
        UIColor(named: named, in: MDS.bundle, compatibleWith: nil)!
    }
}


