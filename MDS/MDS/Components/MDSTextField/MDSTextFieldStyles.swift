//
//  File.swift
//  MDS
//
//  Created by guest1 on 5/8/21.
//

import Resolver
import Foundation

public struct MDSTextFieldStyles {
    static var fontResolver = Resolver.resolve() as FontProviderProtocol
    static var textResolver = Resolver.resolve() as TextSizeProtocol
    static var colorResolver = Resolver.resolve() as ColorPaletteProtocol
    
    public static let inputLabelStyle = MDSTextFieldStyle(textSize: textResolver.textSizerSmall,
                                                          textColor: colorResolver.onSurface,
                                                          font: fontResolver.getRegularFont(),
                                                          placeholderColor: colorResolver.neutral_60)
}
