//
//  Styles.swift
//  MDS
//
//  Created by guest1 on 5/6/21.
//
import Resolver
import Foundation

public struct MDSLabelStyles {
    static var fontResolver = Resolver.resolve() as FontProviderProtocol
    static var textResolver = Resolver.resolve() as TextSizeProtocol
    static var colorResolver = Resolver.resolve() as ColorPaletteProtocol
    
    public static var textAppearanceHeadline1 = MDSLabelStyle(textColor: colorResolver.onSurface,
                                                              size: textResolver.textSizer5XLarge,
                                                              font: fontResolver.getBoldFont())
    
    public static var textAppearanceHeadline2 = MDSLabelStyle(textColor: colorResolver.onSurface,
                                                              size: textResolver.textSizer4XLarge,
                                                              font: fontResolver.getBoldFont())
    
    public static var textAppearanceHeadline3 = MDSLabelStyle(textColor: colorResolver.onSurface,
                                                              size: textResolver.textSizer3XLarge,
                                                              font: fontResolver.getBoldFont())
    
    public static var textAppearanceHeadline4 = MDSLabelStyle(textColor: colorResolver.onSurface,
                                                              size: textResolver.textSizer2XLarge,
                                                              font: fontResolver.getBoldFont())
    
    public static var textAppearanceHeadline5 = MDSLabelStyle(textColor: colorResolver.onSurface,
                                                              size: textResolver.textSizerXLarge,
                                                              font: fontResolver.getBoldFont())
    
    public static var textAppearanceHeadline6 = MDSLabelStyle(textColor: colorResolver.onSurface,
                                                              size: textResolver.textSizerLarge,
                                                              font: fontResolver.getBoldFont())
    
    public static var textAppearanceSubtitle1 = MDSLabelStyle(textColor: colorResolver.onSurface,
                                                              size: textResolver.textSizerMeduim,
                                                              font: fontResolver.getRegularFont())
    
    public static var textAppearanceSubtitle1Medium = MDSLabelStyle(textColor: colorResolver.onSurface,
                                                                    size: textResolver.textSizerMeduim,
                                                                    font: fontResolver.getBoldFont())
    
    public static var textAppearanceSubtitle2 = MDSLabelStyle(textColor: colorResolver.onSurface,
                                                              size: textResolver.textSizerSmall,
                                                              font: fontResolver.getRegularFont())
    
    public static var textAppearanceSubtitle2Medium = MDSLabelStyle(textColor: colorResolver.onSurface,
                                                                    size: textResolver.textSizerSmall,
                                                                    font: fontResolver.getBoldFont())
    
    public static var textAppearanceBody1 = MDSLabelStyle(textColor: colorResolver.onSurface,
                                                          size: textResolver.textSizerMeduim,
                                                          font: fontResolver.getRegularFont())
    
    public static var textAppearanceBody1Medium = MDSLabelStyle(textColor: colorResolver.onSurface,
                                                                size: textResolver.textSizerMeduim,
                                                                font: fontResolver.getBoldFont())
    
    public static var textAppearanceBody2 = MDSLabelStyle(textColor: colorResolver.onSurface,
                                                          size: textResolver.textSizerSmall,
                                                          font: fontResolver.getRegularFont())
    
    public static var textAppearanceBody2Medium = MDSLabelStyle(textColor: colorResolver.onSurface,
                                                                size: textResolver.textSizerSmall,
                                                                font: fontResolver.getBoldFont())
    
    public static var textAppearanceButton = MDSLabelStyle(textColor: colorResolver.onSurface,
                                                           size: textResolver.textSizerSmall,
                                                           font: fontResolver.getBoldFont())
    
    public static var textAppearanceCaption = MDSLabelStyle(textColor: colorResolver.onSurface,
                                                            size: textResolver.textSizerXSmall,
                                                            font: fontResolver.getRegularFont())
    
    public static var textAppearanceCaptionMedium = MDSLabelStyle(textColor: colorResolver.onSurface,
                                                                  size: textResolver.textSizerXSmall,
                                                                  font: fontResolver.getBoldFont())
    
    public static var textAppearanceOverline = MDSLabelStyle(textColor: colorResolver.onSurface,
                                                             size: textResolver.textSizer2XSmall,
                                                             font: fontResolver.getRegularFont())
    
    public static var textAppearanceOverlineMedium = MDSLabelStyle(textColor: colorResolver.onSurface,
                                                                   size: textResolver.textSizer2XSmall,
                                                                   font: fontResolver.getBoldFont())
    
    public static var textAppearanceFormLabel = MDSLabelStyle(textColor: colorResolver.onSurface,
                                                              size: textResolver.textSizerMeduim,
                                                              font: fontResolver.getBoldFont())
}

