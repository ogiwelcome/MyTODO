//
//  LaunchScreen.swift
//  MyTODO
//
//  Created by 荻野真浩 on 2021/09/14.
//

import SwiftUI

struct LaunchScreen: View {
    @State private var isLoading = true
    var body: some View {
        if isLoading {
            ZStack {
                Color("Primary")
                    .ignoresSafeArea() // ステータスバーまで塗る
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .padding()
            }
        }
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
