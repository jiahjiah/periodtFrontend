//
//  WeekViewMode;.swift
//  periodt
//
//  Created by HDSB on 2022-08-27.
//

import Foundation

class WeekViewModel: ObservableObject {
    //MARK: Initalializing
    init(){
        fetchCurrentWeek()
    }
    
    //MARK: Current Day
    @Published var currentDate: Date = Date()
    
    //MARK: Current Week Days
    @Published var currentWeek: [Date] = []
    
    func fetchCurrentWeek() {
        
        let today = Date()
        let calendar = Calendar.current
        
        let week = calendar.dateInterval(of: .weekOfMonth, for: today)
        
        guard let firstWeekDay = week?.start else {
            return
        }
        
        (1...7).forEach { day in
            
            if let weekday = calendar.date(byAdding: .day, value: day, to: firstWeekDay) {
                currentWeek.append(weekday)
            }
        }
        
        
    }
   
    //MARK: Extracting Date
    func extractDate(date: Date, format: String) -> String {
        let formatter = DateFormatter()
        
        formatter.dateFormat = format
        
        return formatter.string(from: date)
    }

    //MARK: Checking if current Date is today
    func isToday(date: Date) -> Bool {
        
        let calendar = Calendar.current
        
        return calendar.isDate(currentDate, inSameDayAs: date)
    }
    
}
