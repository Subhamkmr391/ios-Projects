//
//  ContentView.swift
//  I-am-Rich-SwiftUI
//
//  Created by Subham Kumar on 05/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        ZStack {
            Color(.blue)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("I am rich")
                    .font(.system(size: 40))
                    .bold()
                Image("diamond")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)

            }
        }
        
//        .padding()
    }
}

#Preview {
    ContentView()
}
