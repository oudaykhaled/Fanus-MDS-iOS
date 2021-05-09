//
//  Extension+UIImage.swift
//  MDS
//
//  Created by guest1 on 5/8/21.
//

import UIKit
extension UIImage {
    static func from(local: String) -> UIImage? {
        UIImage(named: local, in: MDS.bundle, with: nil)
    }
        
}
