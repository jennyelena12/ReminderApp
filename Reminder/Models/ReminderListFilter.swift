//
//  ReminderListFilter.swift
//  Reminder
//
//  Created by Elena Nathanielle on 19/07/26.
//

import Foundation
import SwiftUI

enum ReminderListFilter {
    case today
    case scheduled
    case all
    case flagged
    case urgent
    case completed
    
    var title: String {
        switch self {
        case .today: return "Today"
        case .scheduled: return "Scheduled"
        case .all: return "All"
        case .flagged: return "Flagged"
        case .urgent: return "Urgent"
        case .completed: return "Completed"
        }
    }
    
    var themeColor: Color {
        switch self {
        case .today: return .blue
        case .scheduled: return .red
        case .all: return .gray
        case .flagged: return .orange
        case .urgent: return .pink
        case .completed: return .secondary
        }
    }
    
    // PRnya -> yg homeview ganti ini, the icon too
}
