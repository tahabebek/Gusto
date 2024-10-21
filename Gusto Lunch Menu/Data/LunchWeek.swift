//
//  LunchWeek.swift
//  Gusto Lunch Menu
//
//  Created by Taha Bebek on 10/22/24.
//

import Foundation

struct LunchWeek {
    let id = UUID()
    let weekNumber: Int
    let menu: [LunchItem]
}
