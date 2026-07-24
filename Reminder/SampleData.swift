//
//  SampleData.swift
//  Reminder
//
//  Created by Elena Nathanielle on 20/07/26.
//

import Foundation

extension Reminder {

    static let samples: [Reminder] = [

        Reminder(
            title: "Study SwiftUI",
            notes: "Learn ForEach and State",
            url: nil,
            dueDate: Date(),
            hasTime: true,
            isCompleted: false,
            isUrgent: true,
            isFlagged: true
        ),

        Reminder(
            title: "Buy groceries",
            notes: "Milk, Eggs, Bread",
            url: nil,
            dueDate: Date(),
            hasTime: false,
            isCompleted: false,
            isUrgent: false,
            isFlagged: false
        ),

        Reminder(
            title: "Finish Assignment",
            notes: "Due tomorrow",
            url: nil,
            dueDate: Date().addingTimeInterval(86400),
            hasTime: true,
            isCompleted: false,
            isUrgent: true,
            isFlagged: false
        ),

        Reminder(
            title: "Call Mom",
            notes: nil,
            url: nil,
            dueDate: nil,
            hasTime: false,
            isCompleted: true,
            isUrgent: false,
            isFlagged: false
        ),

        Reminder(
            title: "Book flight tickets",
            notes: "Vacation planning",
            url: URL(string: "https://apple.com"),
            dueDate: Date().addingTimeInterval(172800),
            hasTime: false,
            isCompleted: false,
            isUrgent: false,
            isFlagged: true
        )
    ]
}
