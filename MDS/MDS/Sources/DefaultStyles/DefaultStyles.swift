//
//  DefaultStyles.swift
//  MDS
//
//  Created by guest1 on 3/11/21.
//
import Resolver
import Foundation

func loadStyles() {
    Resolver.register { DefaultColorPalette() as ColorPaletteProtocol }
    Resolver.register { DefaultSpacerPool() as SpacerPoolProtocol }
    Resolver.register { DefaultSizerPool() as SizerPoolProtocol }
    Resolver.register { DefaultRadiusPool() as RadiusPoolProtocol }
    Resolver.register { DefaultElevationPool() as ElevationPoolProtocol }
    Resolver.register { DefaultFontProvider() as FontProviderProtocol }
    Resolver.register { DefaultTextSize() as TextSizeProtocol }
}
