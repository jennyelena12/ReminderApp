# Reminder App

## Overview

Reminder App is a simple iOS reminder management application built using SwiftUI. The application allows users to organize reminders based on different categories such as Today, Scheduled, All, Flagged, Urgent, and Completed.

Users can view reminders through categorized lists and add new reminders directly from each category. The app uses SwiftUI state management to dynamically update reminder counts and filtered lists.

## Features

* View reminders by category
* Display reminder counts on the home screen
* Filter reminders by Today, Scheduled, All, Flagged, Urgent, and Completed
* Add new reminders from each category
* Automatically assign category properties when creating reminders
* Display an empty state when no reminders are available
* Navigate between reminder categories using SwiftUI NavigationStack
* Reusable SwiftUI components for reminder cards, rows, headers, and buttons

## Tech Stack

* Swift
* SwiftUI
* Foundation
* Xcode

## Project Structure

```text
.
├── Reminder.xcodeproj/                 # Xcode project configuration
├── Reminder/
│   ├── ReminderApp.swift               # Application entry point
│   ├── SampleData.swift                # Sample reminder data
│   ├── Assets.xcassets/                # App assets and app icon
│   ├── Components/
│   │   ├── AddReminderButton.swift     # Button for adding reminders
│   │   ├── ReminderCard.swift          # Category card component
│   │   ├── ReminderPageHeader.swift    # Reminder list header
│   │   ├── ReminderRow.swift           # Individual reminder row
│   │   └── SimpleListLayout.swift      # Reminder list layout
│   ├── Models/
│   │   ├── Reminder.swift              # Reminder data model
│   │   └── ReminderListFilter.swift    # Reminder category and filter definitions
│   └── Views/
│       ├── HomeView.swift              # Main home screen
│       └── ReminderListView.swift      # Filtered reminder list screen
└── README.md
