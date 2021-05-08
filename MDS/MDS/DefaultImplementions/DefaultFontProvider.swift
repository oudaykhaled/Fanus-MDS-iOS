//
//  DefaultFontProvider.swift
//  MDS
//
//  Created by guest1 on 5/6/21.
//
import UIKit
import Foundation

struct DefaultFontProvider: FontProviderProtocol {
    func getRegularFont() -> String {
        "ArialMT"
    }
    
    func getBoldFont() -> String {
        "Arial-BoldMT"
    }
}
