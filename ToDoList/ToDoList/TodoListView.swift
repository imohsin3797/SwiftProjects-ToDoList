//
//  TodoListView.swift
//  ToDoList
//
//  Created by Ibrahim Mohsin on 10/11/24.
//

import SwiftUI

struct TodoListView: View {
    @Binding var todoList: [Todo]
    @State var text: String
    
    let color: Color
    
    var body: some View {
        List {
            ForEach(todoList) { todo in
                TodoRowView(todo: todo, color: color)
            }
            .onDelete(perform: deleteTodo)
        }
        .listStyle(.plain)
        .toolbar {
            ToolbarItem(placement: .topBarLeading){
                Text(text)
                    .font(.title)
                    .foregroundColor(color)
                    .bold()
            }
            
            ToolbarItem(placement: .topBarTrailing){
                Text("\(todoList.count)")
                    .font(.title)
                    .foregroundColor(color)
                    .bold()
            }
            
            
            ToolbarItem(placement: .bottomBar) {
                HStack {
                    Button(action: addNewTodo) {
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
    
    private func addNewTodo() {
        todoList.append(Todo(text: ""))
    }
    
    private func deleteTodo(at offsets: IndexSet) {
        todoList.remove(atOffsets: offsets)
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        // Create a temporary binding for preview purposes
        TodoListView(todoList: .constant([Todo(text: "Sample Task")]), text: ("Hello, World!"), color: .blue)
    }
}
