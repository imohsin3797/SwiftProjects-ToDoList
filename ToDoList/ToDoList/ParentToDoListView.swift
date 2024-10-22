//
//  ParentToDoListView.swift
//  ToDoList
//
//  Created by Ibrahim Mohsin on 10/11/24.
//

import SwiftUI

class TodoListViewModel: ObservableObject {
    @Published var homeworkTodos: [Todo] = Todo.exampleList
    @Published var choresTodos: [Todo] = Todo.exampleList
    
    // Add any additional categories here
}

struct ParentTodoListView: View {
    @StateObject private var viewModel = TodoListViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: TodoListView(todoList: $viewModel.homeworkTodos, text: "Homework", color: .red)) {
                    Text("Homework")
                        .foregroundStyle(.red)
                }
                
                NavigationLink(destination: TodoListView(todoList: $viewModel.choresTodos, text: "Chores", color: .purple)) {
                    Text("Chores")
                        .foregroundStyle(.purple)
                }
                
                // Add more NavigationLinks for additional categories if needed
            }
            .navigationTitle("Reminders")
        }
    }
}

#Preview {
    ParentTodoListView()
}
