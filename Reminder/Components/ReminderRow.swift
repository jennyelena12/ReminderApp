//
//  ReminderRow.swift
//  Reminder
//
//  Created by Elena Nathanielle on 19/07/26.
//

import SwiftUI

struct ReminderRow: View {
    @Binding var reminder: Reminder
    let listFilter: ReminderListFilter
    
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            // Left Side: Native Checklist Radio Button
//            Image(systemName: reminder.isCompleted ? "checkmark.circle.fill" : "circle")
//                .font(.system(size: 22))
//                .foregroundColor(reminder.isCompleted ? listFilter.themeColor : .gray.opacity(0.4))
//                .padding(.top, 2)
            
            Button {
                reminder.isCompleted.toggle()
            } label: {
                Image(
                        systemName: reminder.isCompleted
                        ? "checkmark.circle.fill"
                        : "circle"
                    )
                    .font(.system(size: 22))
                    .foregroundColor(
                        reminder.isCompleted
                        ? listFilter.themeColor
                        : .gray.opacity(0.4)
                    )
            }
            .buttonStyle(.plain)
            
            // Middle Column: Text Fields stacked vertically
            VStack(alignment: .leading, spacing: 4) {
                // Title Field
                TextField(
                    "New Reminder",
                    text: $reminder.title
                )
                .font(.body)
                
                // Optional Notes Field
                if let notes = reminder.notes, !notes.isEmpty {
                    Text(notes)
                        .font(.footnote)
                        .foregroundColor(.gray)
                } else if !reminder.title.isEmpty {
                    // Placeholder when typing a new reminder note
                    Text("Add Note")
                        .font(.footnote)
                        .foregroundColor(.gray.opacity(0.6))
                }
                
                // Secondary Footer Row (List Name + Subtitle Time/Date)
                HStack(spacing: 4) {
                    Text("Reminders")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    
                    if let date = reminder.dueDate {
                        Text(date, style: .time)
                            .font(.footnote)
                            .foregroundColor(.red) // Native app highlights today's alert times in red
                    }
                }
            }
            
            Spacer()
            
            // Right Side Action Tray
            HStack(spacing: 16) {
                // 1. Conditional Flag Icon (Placed on the left side before the 'i' symbol)
                if reminder.isFlagged {
                    Image(systemName: "flag.fill")
                        .font(.system(size: 16))
                        .foregroundColor(.orange)
                }
                
                // 2. Info Detail Button (Changes color dynamically based on the theme)
                Button(action: {
                    // Action to open details view later
                }) {
                    Image(systemName: "info.circle")
                        .font(.system(size: 20))
                        .foregroundColor(listFilter.themeColor)
                }
            }
            .padding(.top, 2)
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    ReminderRow(
        reminder: .constant(
            Reminder(
                title: "Study SwiftUI",
                notes: "Learn reusable components and state management",
                url: nil,
                dueDate: Date(),
                hasTime: true,
                isCompleted: false,
                isUrgent: true,
                isFlagged: true
            )
        ),
        listFilter: .today
    )
}
