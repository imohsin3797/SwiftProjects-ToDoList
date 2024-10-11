//
//  ContentView.swift
//  ToDoList
//
//  Created by Ibrahim Mohsin on 10/11/24.
//

import SwiftUI

struct Todo: Identifiable {
    var id = UUID()
    var isDone = false
    var text: String
}

extension Todo {
    static var example: Todo {
        Todo(text: "Take out the trash")
    }
    
    static var exampleList: [Todo] {
        [Todo(text: "Walk the dog"), Todo(text: "Feed the hog"), Todo(isDone: true, text: "Eat breakfast")]
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello World")
    }
}

#Preview {
    ContentView()
}
