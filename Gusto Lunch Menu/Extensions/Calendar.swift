//
//  Calendar.swift
//  Gusto Lunch Menu
//
//  Created by Taha Bebek on 10/21/24.
//

import Foundation

extension Calendar {
    static let daysOfWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    
    static var isWeekOne: Bool {
        let currentWeek = Calendar.current.component(.weekOfYear, from: Date())
        return currentWeek % 2 != 0
    }
    
    static var weekdayIndex: Int {
        Calendar.current.component(.weekday, from: Date()) - 2 // 0 = Monday, 1 = Tuesday, etc.
    }
    
    static var isWeekend: Bool {
        Calendar.weekdayIndex < 0
    }
}
