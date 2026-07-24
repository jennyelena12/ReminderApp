//
//  HomeView.swift
//  Reminder
//
//  Created by Elena Nathanielle on 19/07/26.
//

import SwiftUI
struct HomeView: View {
    @State private var reminders = Reminder.samples
    
    var todayCount: Int {
        reminders.filter {
            if let dueDate = $0.dueDate {
                return Calendar.current.isDateInToday(dueDate)
            }
            return false
        }.count
    }

    var scheduledCount: Int {
        reminders.filter { $0.dueDate != nil }.count
    }

    var allCount: Int {
        reminders.count
    }

    var flaggedCount: Int {
        reminders.filter { $0.isFlagged }.count
    }

    var urgentCount: Int {
        reminders.filter { $0.isUrgent }.count
    }

    var completedCount: Int {
        reminders.filter { $0.isCompleted }.count
    }
    
    var body: some View {
        VStack (alignment: .leading) {
            VStack{
                HStack {
                    NavigationLink {
                        ReminderListView(
                            filter: .today,
                            reminders: $reminders
                        )
                    } label: {
                        ReminderCard(
                            title: "Today",
                            iconName: "calendar",
                            count: todayCount,
                            baseColor: .blue
                        )
                    }

                    NavigationLink {
                        ReminderListView(
                            filter: .scheduled,
                            reminders: $reminders
                        )
                    } label: {
                        ReminderCard(
                            title: "Scheduled",
                            iconName: "calendar.badge.clock",
                            count: scheduledCount,
                            baseColor: .red
                        )
                    }
                }
                HStack {
                    NavigationLink {
                        ReminderListView(
                            filter: .all,
                            reminders: $reminders
                        )
                    } label: {
                        ReminderCard(
                            title: "All",
                            iconName: "tray.fill",
                            count: allCount,
                            baseColor: .gray
                        )
                    }

                    NavigationLink {
                        ReminderListView(
                            filter: .flagged,
                            reminders: $reminders
                        )
                    } label: {
                        ReminderCard(
                            title: "Flagged",
                            iconName: "flag.fill",
                            count: flaggedCount,
                            baseColor: .orange
                        )
                    }
                }
                HStack {
                    NavigationLink {
                        ReminderListView (
                            filter: .urgent,
                            reminders: $reminders
                        )
                    } label: {
                        ReminderCard(title: "Urgent", iconName: "alarm.fill", count: urgentCount, baseColor: .pink)
                    }
                    
                    NavigationLink {
                        ReminderListView (
                            filter: .completed,
                            reminders: $reminders
                        )
                    } label: {
                        ReminderCard(title: "Completed", iconName: "checkmark", count: completedCount, baseColor: .secondary)
                    }
                }
            }
            .frame(width: 340, height: 300)
            .padding()
            Text("My List")
                .font(.largeTitle)
            
            // list
                
        }
        
        Spacer()
        

    }
}

#Preview {
    HomeView()
}
