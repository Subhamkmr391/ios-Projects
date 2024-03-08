//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Subham Kumar on 06/03/24.
//

import SwiftUI

struct ContentView: View {
    
   @State var leftDiceNumber = 1
   @State var rightDiceNumber = 1
    
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Image("diceeLogo")
                Spacer()
                
                HStack{
                    
                    
                    
                    //                    Image("dice2")
                    //                        .resizable()
                    //                        .aspectRatio(1, contentMode: .fit)
                    //                        .frame(width: 150,height: 150, alignment:                             .center)
                    //                        .padding()
                    
                    
                    
                    
                    DiceImageView(num: leftDiceNumber)
                    DiceImageView(num: rightDiceNumber)
                    
                }
                .padding(.horizontal)
                .frame(maxWidth: UIScreen.main.bounds.width)
                Spacer()
                Button(action: {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }, label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .padding(.horizontal)
                })
                .background(Color(.red))
                .padding()
                Spacer()
               
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DiceImageView: View {
    
    let num: Int
    
    var body: some View {
        
        Image("dice\(num)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .frame(width: 150  ,height: 150, alignment: .center)
            .padding()
    }
}
