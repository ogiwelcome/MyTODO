//
//  HomeView.swift
//  MyTODO
//
//  Created by 荻野真浩 on 2021/09/20.
//

import SwiftUI

struct TodoView: View {
    var title: String
    var type: String
    var note: String
    var rating: Int = 3
    
    var body: some View {
        HStack {
            VStack {
                HStack(spacing: 0) {
                    ForEach(1...rating, id: \.self){_ in
                        Image(systemName: "star.fill")
                    }
                    ForEach(rating..<5, id: \.self){_ in
                        Image(systemName: "star")
                    }
                }.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text(type).font(.footnote)
            }
            VStack(alignment: .leading) {
                Text(title).font(.largeTitle)
                Text(note).font(.subheadline)
            }
        }
    }
}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView(
            title: "hoge",
            type: "hoge",
            note: "hogehoge"
        )
            .previewLayout(.fixed(width: 400, height: 100))
    }
}
