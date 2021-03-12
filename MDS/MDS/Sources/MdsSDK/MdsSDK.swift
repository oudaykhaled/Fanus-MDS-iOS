//
//  MdsSDK.swift
//  MDS
//
//  Created by guest1 on 3/10/21.
//

import Foundation
import Resolver

public typealias ResolverFactory<Service> = () -> Service?

public class MdsSDK {
    
    public init() {
        loadDefaultStyles()
    }
    
    public func register<Service>(_ type: Service.Type = Service.self,
                                  name: Resolver.Name? = nil,
                                  factory: @escaping ResolverFactory<Service>) {
        Resolver.register(type, name: name, factory: factory)
    }
    
    private func loadDefaultStyles() {
        loadStyles()
    }
    
}
