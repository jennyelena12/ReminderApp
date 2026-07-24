//
//  AddReinderButton.swift
//  Reminder
//
//  Created by Elena Nathanielle on 23/07/26.
//

import Foundation
import SwiftUI

struct AddReminderButton: View{
    let color: Color
    let action: () -> Void
    
    var body: some View{
        Button {
            action()
        } label: {
            Image(systemName: "plus")
                .font(.title2.weight(.bold))
                .foregroundStyle(.white)
                .frame(width: 58, height: 58)
                .background(color)
                .clipShape(Circle())
        }
    }
}
