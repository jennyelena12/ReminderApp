//
//  Reminder.swift
//  Reminder
//
//  Created by Elena Nathanielle on 19/07/26.
//
import Foundation
import SwiftUI

struct Reminder: Identifiable {
    let id = UUID()
    
    var title: String
    var notes: String?
    var url: URL?
    
    var dueDate: Date?
    var hasTime: Bool = false
    
    var isCompleted: Bool
    var isUrgent: Bool
    var isFlagged: Bool
}

extension Reminder {
    static var empty: Reminder {
        Reminder(
            title: "",
            notes: nil,
            url: nil,
            dueDate: nil,
            hasTime: false,
            isCompleted: false,
            isUrgent: false,
            isFlagged: false
        )
    }
}
