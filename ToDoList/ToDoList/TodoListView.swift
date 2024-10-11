//
//  TodoListView.swift
//  ToDoList
//
//  Created by Ibrahim Mohsin on 10/11/24.
//

import SwiftUI

struct TodoListView: View {
    @State private var todoList = Todo.exampleList
    let color: Color
    var body: some View {
        List {
            ForEach(todoList) { todo in
                TodoRowView(todo: todo, color: color)
            }
        }
        .listStyle(.plain)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Text("Todoey")
                    .font(.largeTitle)
                    .bold()
                    .fontDesign(.rounded)
                    .foregroundStyle(color)
            }
            ToolbarItem(placement: .bottomBar) {
                HStack {
                    Button {
                        todoList.append(Todo(text: ""))
                    } label: {
                        Image(systemName: "plus.circle.fill")
                        Text("New Todo")
                    }
                    .buttonStyle(.plain)
                    .foregroundStyle(color)
                    .fontDesign(.rounded)
                    .bold()
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        TodoListView(color: .purple)
    }
}
