//
//  CalendarExtension.swift
//  LandeoCalendar
//
//  Created by sebastian on 12.10.2017.
//  Copyright © 2017 Sebastian Grabiński. All rights reserved.
//

import Foundation
import UIKit

extension Calendar {
    
    func firstDayOfMonth(from date: Date) -> Date {
        var dateComponents = self.dateComponents([.day, .month , .year], from: date)
        dateComponents.day = 1
        return self.date(from: dateComponents)!
        
    }
    
    func getCalendarMonths(from startDate: Date, to endDate: Date) -> Int {
        let differenceComponents = self.dateComponents( [.month], from: startDate, to: endDate)
        guard let month = differenceComponents.month else { return 0 }
        return month + 1
    }
    
    func getCalendarDay(from startDate: Date, to endDate: Date) -> DateComponents {
        let differenceComponents = self.dateComponents( [.month, .day], from: startDate, to: endDate)
        return differenceComponents
    }
    
    
}
