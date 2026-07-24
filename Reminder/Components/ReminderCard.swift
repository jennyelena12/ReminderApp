//
//  ReminderCard.swift
//  Reminder
//
//  Created by Elena Nathanielle on 19/07/26.
//

import SwiftUI

struct ReminderCard: View {
    let title: String
    let iconName: String
    let count: Int
    let baseColor: Color
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: iconName)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                    .frame(width: 36, height: 36)
                    .background(baseColor)
                    .clipShape(Circle())
                
                Spacer()
                Text("\(count)")
                    .font(.system(size: 32, weight: .bold))
                    .foregroundColor(.white)
            }
            Spacer()
            
            Text(title)
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.white)
        }
        .padding()
        .frame(maxWidth: .infinity, minHeight: 110)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [baseColor.opacity(0.85), baseColor]),
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .cornerRadius(16)
    }
}

#Preview {
    ReminderCard(title: "Today", iconName: "calendar", count: 0, baseColor: .blue)
}
