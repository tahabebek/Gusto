//
//  LunchMenuViewModel.swift
//  Gusto Lunch Menu
//
//  Created by Taha Bebek on 10/21/24.
//

import Observation
import Foundation

@Observable
@MainActor
class LunchMenuViewModel {
    
    private var menu: Menu?
    private(set) var isLoading: Bool = false
    private(set) var currentWeekMenu: [LunchItem] = []
    private(set) var nextWeekMenu: [LunchItem] = []
    
    private let dataSource = LunchMenuDataSource()

    func fetchLunchMenu() async {
        isLoading = true
        defer { isLoading = false }
        
        let menu = await dataSource.getLunchMenu()
        if Calendar.isWeekOne {
            currentWeekMenu = orderMenu(menu[0], isCurrentWeek: true)
            nextWeekMenu = orderMenu(menu[1])
        } else {
            currentWeekMenu = orderMenu(menu[1], isCurrentWeek: true)
            nextWeekMenu = orderMenu(menu[0])
        }
    }
    
    private func orderMenu(_ items: [MenuItem], isCurrentWeek: Bool = false) -> [LunchItem] {
        let lunchItems = zip(Calendar.daysOfWeek, items).map { day, meal in
            LunchItem(day: day, meal: meal)
        }
        
        // If todayIndex is negative (weekend), show the normal order.
        guard !Calendar.isWeekend else {
            return lunchItems
        }
        
        guard isCurrentWeek else { return lunchItems }
        
        // Order the array starting from today
        var items = Array(lunchItems[Calendar.weekdayIndex..<lunchItems.count])
        items[0].day = "Today"
        items[1].day = "Tomorrow"
        return items
    }
}
