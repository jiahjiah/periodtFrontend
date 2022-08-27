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
    var moods: Mood
    var flowType: Flow
    var symptoms: String
    
}


struct Flow {
    let id: Int
    let name: String
    let icon: UIImage?
}

extension Flow: Identifiable {
    static let heavy = Flow(id: 1, name: "heavy", icon: UIImage(named: "heavy"))
    static let medium = Flow(id: 2, name: "medium", icon: UIImage(named: "medium"))
    static let light = Flow(id: 3, name: "light", icon: UIImage(named: "light"))
}

extension Flow {
    static let flowypes : [Flow] = [
        .heavy,
        .medium,
        .light
    ]
}

struct Mood {
    let id: Int
    let name: String
    let icon: UIImage?
}

extension Mood: Identifiable {
    static let amazing = Mood(id: 1, name: "amazing", icon: UIImage(named: "amazing"))
    static let happy = Mood(id: 2, name: "happy", icon: UIImage(named: "happy"))
    static let bad = Mood(id: 3, name: "bad", icon: UIImage(named: "bad"))
    static let frustrated = Mood(id: 4, name: "frustrated", icon: UIImage(named: "frustrated"))
    static let calm = Mood(id: 5, name: "calm", icon: UIImage(named: "calm"))
}

extension Mood {
    static let moods : [Mood] = [
        .amazing,
        .happy,
        .bad,
        .frustrated,
        .calm,
    ]
}

