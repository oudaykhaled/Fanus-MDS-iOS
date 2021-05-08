//
//  FontProvider.swift
//  MDS
//
//  Created by guest1 on 5/6/21.
//

import UIKit
import Foundation

public protocol FontProviderProtocol {
    func getRegularFont() -> String
    func getBoldFont() -> String
}
