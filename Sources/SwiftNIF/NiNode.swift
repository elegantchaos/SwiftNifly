// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 15/03/22.
//  All code (c) 2022 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation
import cnifly

public class NiNode: NiWrapper {
    typealias Wrapped = ni_node
    
    let wrapped: ni_node

    public required init(_ node: ni_node) {
        self.wrapped = node
    }

    public init?(_ node: ni_node?) {
        guard let node = node else { return nil }
        self.wrapped = node
    }

    public var kind: String {
        let kind = ni_node_get_kind(wrapped)
        return String(cString: kind)
    }

    public var name: String {
        let name = ni_node_get_name(wrapped)
        return String(cString: name)
    }
}

//public protocol NiNamed: NiWrapper {
//    var name: String? { get }
//}
//
//extension NiNamed {
//    public var name: String? {
//        let name = ni_node_get_name(wrapped)
//        return String(cString: name)
//    }
//}
