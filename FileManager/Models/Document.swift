//
//  Document.swift
//
//
//  Created by Darien Sandifer on 1/9/21.
//

import Foundation

struct FileItem: Identifiable {
    let id: UUID = UUID()
    let name: String
    let path: String
    let size: UInt64
    let isFile: Bool = Bool.random()
    
    init(name: String, path: String?, size: UInt64) {
        self.name = name
        self.path = path ?? ""
        self.size = UInt64.random(in: 0...421897)
    }
}
