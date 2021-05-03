//
//  MDSExampleApp.swift
//  MDSExample
//
//  Created by guest1 on 3/10/21.
//
import MDS
import SwiftUI

@main
struct MDSExampleApp: App {
    
    init() {
        let mdsSDK = MdsSDK()
        loadStyles(mdsSDK)

    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            
        }
    }
    
    func loadStyles(_ mdsSDK: MdsSDK) {
   mdsSDK.register { ColorPalette() as ColorPaletteProtocol }
        mdsSDK.register { SpacerPool() as SpacerPoolProtocol }
        mdsSDK.register { SizerPool() as SizerPoolProtocol }
        mdsSDK.register { RadiusPool() as RadiusPoolProtocol }

    }
}
