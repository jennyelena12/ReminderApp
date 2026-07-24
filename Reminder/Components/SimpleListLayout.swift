//
//  SimpleListLayout.swift
//  Reminder
//
//  Created by Elena Nathanielle on 20/07/26.
//

import SwiftUI
//
struct SimpleListLayout: View {
    @Binding var reminders: [Reminder]
    let filteredIndices: [Array<Reminder>.Index]
    let filter: ReminderListFilter
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(filteredIndices, id: \.self) { index in
                    ReminderRow(
                        reminder: $reminders[index],
                        listFilter: filter
                    )

                    Divider()
                }
            }
        }
        .listStyle(.plain)
        .padding(.horizontal, 30)
    }
}
//
#Preview {
    SimpleListLayout(
        reminders: .constant(Reminder.samples),
        filteredIndices: [0, 1, 2],
        filter: .all
    )
}
