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
        ZStack {
            Color("backAdd")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                VStack {
                    Spacer()
                    Text("Add new schedule")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    Spacer()
                    VStack {
                        Text("Title")
                        TextField("Input new title", text: $title)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Text("type")
                        TextField("Input new type", text: $type)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Text("Note")
                        TextField("Input new note", text: $note)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Text("Rating")
                        Picker(selection: $rating, label: Text("rating")) {
                            /*@START_MENU_TOKEN@*/Text("1").tag(1)/*@END_MENU_TOKEN@*/
                            Text("2").tag(2)
                            Text("3").tag(3)
                            Text("4").tag(4)
                            Text("5").tag(5)
                        }.pickerStyle(SegmentedPickerStyle())
                        Spacer()
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
                            self.rating=3
                            //TODO:self.ratingをpickerで作る
                        }) {
                            Text("Add")
                                .buttonStyle(BorderlessButtonStyle())
                        }
                    }//H
                }.padding([.leading,.trailing])//V
                Spacer()
                /*
                List(todos) {todo in
                    TodoRow(todo: todo)
                }
                */
            }//V
        }//Z
    }
}

struct AddRowView_Previews: PreviewProvider {
    static var previews: some View {
        AddRowView()
    }
}
