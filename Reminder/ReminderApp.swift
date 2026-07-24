//
//  ReminderApp.swift
//  Reminder
//
//  Created by Elena Nathanielle on 19/07/26.
//

import SwiftUI

@main
struct ReminderApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                HomeView()
            }
        }
    }
}
#Preview {
    HomeView()
}
