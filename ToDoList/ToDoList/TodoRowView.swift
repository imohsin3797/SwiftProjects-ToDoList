//
//  TodoRowView.swift
//  ToDoList
//
//  Created by Ibrahim Mohsin on 10/11/24.
//

import SwiftUI

struct TodoRowView: View {
    @State var todo: Todo
    let color: Color
    var body: some View {
        HStack {
            Button {
                todo.isDone.toggle()
            } label: {
                Image(systemName: todo.isDone ? "checkmark.circle.fill" : "circle")
            }
            .foregroundStyle(color)
            TextField("", text: $todo.text)
        }
    }
}

#Preview {
    TodoRowView(todo: .example, color: .purple)
}
