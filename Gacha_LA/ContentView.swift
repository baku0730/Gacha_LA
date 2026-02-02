//
//  ContentView.swift
//  Gacha_LA
//
//  Created by シング　シュバクシ on 2026/02/02.
//

import SwiftUI

struct ContentView: View {
    @State var showSheet = false
    var body: some View {
        ZStack {
            Image("gacha")
                .resizable()
                .ignoresSafeArea()
            Button{
                showSheet = true
            } label: {
                Image("Presentbox")
                    .resizable()
                    .scaledToFit() //アスペクト比を保ったまま調整される
            }
        }
        .fullScreenCover(isPresented: $showSheet){
            ResultView()
        }
    }
}

#Preview {
    ContentView()
}
