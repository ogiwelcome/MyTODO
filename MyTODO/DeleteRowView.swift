//
//  DeleteRowView.swift
//  MyTODO
//
//  Created by 荻野真浩 on 2021/09/25.
//

import SwiftUI

struct DeleteRowView: View {
    @State var mfgs = ["hoge","fuga","piyo"]
    var body: some View {
        List {
            ForEach(mfgs, id: \.self) {user in
                Text(user)
            }.onDelete {offsets in
                self.mfgs.remove(atOffsets: offsets)
            }
        }
    }
}

struct DeleteRowView_Previews: PreviewProvider {
    static var previews: some View {
        DeleteRowView()
    }
}
