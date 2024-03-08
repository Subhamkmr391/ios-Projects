//
//  SwiftUIView.swift
//  SushiBusinessCard
//
//  Created by Subham Kumar on 06/03/24.
//

import SwiftUI


struct InfoView: View {
    
    let image: String
    let text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 300, height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: image)
                    .foregroundColor(.green)
                Text(text)
            })
    }
}


#Preview {
    InfoView(image: "phone.fill", text: "some_random_text")
        .previewLayout(.sizeThatFits)
      
}
