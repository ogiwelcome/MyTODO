//
//  AddRowView.swift
//  MyTODO
//
//  Created by 荻野真浩 on 2021/09/25.
//

import SwiftUI

struct AddRowView: View {
    @State var mfgs:[String] = []
    @State var new = ""
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                Text("Add new schedule")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                HStack {
                    TextField("Input new mfg", text: $new)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: {
                        self.mfgs.append(self.new)
                        self.new=""
                    }) {
                        Text("Add")
                            .buttonStyle(BorderlessButtonStyle())
                    }
                }//H
            }.padding([.leading,.trailing])//V
            List {
                ForEach(mfgs, id: \.self) { user in
                    Text(user)
                }
            }
        }//V
    }
}

struct AddRowView_Previews: PreviewProvider {
    static var previews: some View {
        AddRowView()
    }
}
