//
//  ReminderListView.swift
//  Reminder
//
//  Created by Elena Nathanielle on 19/07/26.
//

import SwiftUI

struct ReminderListView: View {
    let filter: ReminderListFilter
    @Binding var reminders: [Reminder]
    
    
    var filteredIndices: [Array<Reminder>.Index] {
        switch filter {

        case .today:
            return reminders.indices.filter { index in
                guard let dueDate = reminders[index].dueDate else { return false }
                return Calendar.current.isDateInToday(dueDate)
            }

        case .all:
            return Array(reminders.indices)

        case .flagged:
            return reminders.indices.filter { index in reminders[index].isFlagged }

        case .scheduled:
            return reminders.indices.filter { index in reminders[index].dueDate != nil }

        case .urgent:
            return reminders.indices.filter {index in reminders[index].isUrgent }

        case .completed:
            return reminders.indices.filter { index in reminders[index].isCompleted }
        }
    }
    
//    var filteredIndices: [Array<Reminder>.Index]
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            VStack(spacing: 0){
                ReminderPageHeader(filter: filter)
                if filteredIndices.isEmpty {
                    VStack(spacing: 12) {
                        Image(systemName: "tray")
                            .font(.largeTitle)
                            .foregroundColor(.gray)

                        Text("No Reminders")
                            .foregroundColor(.gray)
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                } else {
                    SimpleListLayout( reminders: $reminders,filteredIndices: filteredIndices, filter: filter)
                }
            }
            AddReminderButton(
                color: filter.themeColor
               
            ){
                var reminder = Reminder.empty
                switch filter {

                case .today:
                    reminder.dueDate = Date()

                case .scheduled:
                    reminder.dueDate = Date()

                case .all:
                    break

                case .flagged:
                    reminder.isFlagged = true

                case .urgent:
                    reminder.isUrgent = true

                case .completed:
                    reminder.isCompleted = true
                }
                
                reminders.append(reminder)
            }
            .padding()
        }

    }
}

//#Preview {
//    NavigationStack{
//        ReminderListView(filter: .urgent, reminders: Reminder.samples)
//    }
//
//}
//
//#Preview("Empty") {
//    NavigationStack{
//        ReminderListView(
//            filter: .all,
//            reminders: []
//        )
//    }
//
//}
