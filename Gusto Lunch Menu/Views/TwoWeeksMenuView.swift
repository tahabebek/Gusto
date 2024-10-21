//
//  TwoWeeksMenuView.swift
//  Gusto Lunch Menu
//
//  Created by Taha Bebek on 10/22/24.
//


import SwiftUI

struct TwoWeeksMenuView: View {
    @State var viewModel = LunchMenuViewModel()
    @State private var selectedWeek = 0
    
    var body: some View {
        VStack {
            WeekSelector(selectedWeek: $selectedWeek)
                .padding()
            
            if viewModel.isLoading {
                ProgressView("Loading...")
                    .padding()
            } else {
                MenuView(week: selectedWeek == 0 ? viewModel.currentWeekMenu : viewModel.nextWeekMenu)
            }
            
            Spacer()
        }
        .ignoresSafeArea(edges: .bottom)
        .task {
            await viewModel.fetchLunchMenu()
        }
    }
}

#Preview {
    TwoWeeksMenuView()
}
