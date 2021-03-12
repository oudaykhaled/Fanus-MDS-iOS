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
}
