//
//  ContentView.swift
//  SushiBusinessCard
//
//  Created by Subham Kumar on 05/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.341, green: 0.376, blue: 0.435)
                .edgesIgnoringSafeArea(.all)// #57606f
            VStack {
                
                Image("coder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center).clipShape(Circle())
                    .overlay(Circle()
                    .stroke(.black, lineWidth: 5.0))
                
                Text("Subham Kumar")
                    .font(Font.custom("Satisfy-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                
                
                Text("ios Developer")
                    .foregroundColor(.white)
                
                Divider()
                
//                RoundedRectangle(cornerRadius: 30)
//                    .frame(width: 300, height: 50)
//                    .foregroundColor(.white)
//                    .overlay(HStack {
//                        Image(systemName: "phone.fill").foregroundColor(.green)
//                        Text("+91-859687969")
//                    })
                InfoView(image: "phone.fill", text: "+91-8596847969")
                InfoView(image: "envelope.fill", text: "subhamkmr390@gmail.com")
            }
        }
        //        .padding()
    }
}


#Preview {
    ContentView()
}

//struct InfoView: View {
//    
//    let image: String
//    let text: String
//    
//    var body: some View {
//        RoundedRectangle(cornerRadius: 30)
//            .frame(width: 300, height: 50)
//            .foregroundColor(.white)
//            .overlay(HStack {
//                Image(systemName: image)
//                    .foregroundColor(.green)
//                Text(text)
//            })
//    }
//}
