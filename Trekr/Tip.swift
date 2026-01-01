//
//  Tip.swift
//  Trekr
//
//  Created by Vansh Nagpal on 31/12/25.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}

