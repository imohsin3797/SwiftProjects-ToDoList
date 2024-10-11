//
//  ParentToDoListView.swift
//  ToDoList
//
//  Created by Ibrahim Mohsin on 10/11/24.
//

import SwiftUI

struct ParentTodoListView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Homework") {
                    TodoListView(color: .red)
                }
                .foregroundStyle(.red)
                NavigationLink("Chores") {
                    TodoListView(color: .purple)
                }
                .foregroundStyle(.purple)
            }
            .navigationTitle("Reminders")
        }
    }
}

#Preview {
    ParentTodoListView()
}
