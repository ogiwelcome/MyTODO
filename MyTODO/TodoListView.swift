//
//  TodoListView.swift
//  MyTODO
//
//  Created by 荻野真浩 on 2021/09/24.
//

import SwiftUI

struct Todo: Identifiable {
    var id = UUID()
    var title: String
    var type: String // 未着手・着手中・終了
    var note: String // 概要
    var rating: Int // 重要度
}
struct TodoRow: View {
    var todo: Todo
    var body: some View {
        TodoView(
            title: todo.title,
            type: todo.type,
            note: todo.note,
            rating: todo.rating
        )
    }
}
struct TodoListView: View {
    @State var isPresentedAddRowView = false
    var body: some View {
        VStack {
            let todos: [Todo] = [
                Todo(
                    title: "hoge",
                    type: "hoge",
                    note: "hogehoge",
                    rating: 1
                ),
                Todo(
                    title: "piyo",
                    type: "piyo",
                    note: "piyopiyo",
                    rating: 5
                ),
                Todo(
                    title: "pon",
                    type: "pon",
                    note: "ponon",
                    rating: 3
                )
            ]
            List(todos) {todo in
                TodoRow(todo: todo)
            }
            // closeボタンは無しでスクロールに任せる
            Button("予定を追加") {
                self.isPresentedAddRowView.toggle()
            }
            .sheet(isPresented: $isPresentedAddRowView){
                AddRowView()
            }
            Spacer()
        }
        
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView()
    }
}
