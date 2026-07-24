//
//  ReminderPageHeader.swift
//  Reminder
//
//  Created by Elena Nathanielle on 21/07/26.
//
import SwiftUI

struct ReminderPageHeader: View {
    let filter: ReminderListFilter
    var body: some View {
        VStack(alignment: .leading) {
            Text(filter.title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(filter.themeColor)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
    }
}

#Preview {
    ReminderPageHeader(filter: .today)
}
