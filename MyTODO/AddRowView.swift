//
//  AddRowView.swift
//  MyTODO
//
//  Created by 荻野真浩 on 2021/09/25.
//

import SwiftUI

struct AddRowView: View {
    @State var mfgs:[String] = []
    @State var todos:[Todo] = []
    @State var title = ""
    @State var type = ""
    @State var note = ""
    @State var rating = 3
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                Text("Add new schedule")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                VStack {
                    TextField("Input new title", text: $title)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Input new type", text: $type)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Input new note", text: $note)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: {
                        self.todos.append(
                            Todo(
                                title:self.title,
                                type:self.type,
                                note:self.note,
                                rating:self.rating
                            )
                        )
                        self.title=""
                        self.type=""
                        self.note=""
                        //TODO:self.ratingをpickerで作る
                    }) {
                        Text("Add")
                            .buttonStyle(BorderlessButtonStyle())
                    }
                }//H
            }.padding([.leading,.trailing])//V
            List(todos) {todo in
                TodoRow(todo: todo)
            }
        }//V
    }
}

struct AddRowView_Previews: PreviewProvider {
    static var previews: some View {
        AddRowView()
    }
}
