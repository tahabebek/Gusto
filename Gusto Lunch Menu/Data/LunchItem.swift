//
//  LunchItem.swift
//  Gusto Lunch Menu
//
//  Created by Taha Bebek on 10/22/24.
//

import Foundation

struct LunchItem: Identifiable {
    let id = UUID()
    var day: String
    let meal: MenuItem
}
