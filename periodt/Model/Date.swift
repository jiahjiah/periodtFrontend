//
//  Date.swift
//  periodt
//
//  Created by HDSB on 2022-08-27.
//

import Foundation
import SwiftUI

struct Day: Identifiable {
    var id: Int
    var moods: [Mood]
    var flowType: [Flow]
    var symptoms: String
    
}


struct Flow {
    let id: Int
    let name: String
    let icon: Image
}


struct Mood {
    let id: Int
    let name: String
    let icon: UIImage?
}

extension Mood {
    static let amazing = Mood(id: 1, name: "amazing", icon: UIImage(named: "amazing"))
    static let happy = Mood(id: 2, name: "happy", icon: UIImage(named: "happy"))
    static let bad = Mood(id: 3, name: "bad", icon: UIImage(named: "bad"))
    static let frustrated = Mood(id: 4, name: "frustrated", icon: UIImage(named: "frustrated"))
    static let calm = Mood(id: 5, name: "Utilities", icon: UIImage(named: "calm"))
}

extension Mood {
    static let categories : [Mood] = [
        .amazing,
        .happy,
        .bad,
        .frustrated,
        .calm,
    ]
}
