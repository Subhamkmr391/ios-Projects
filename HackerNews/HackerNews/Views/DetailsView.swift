//
//  DetailsView.swift
//  HackerNews
//
//  Created by Subham Kumar on 08/03/24.
//

import SwiftUI
import WebKit

struct DetailsView: View {
    
    let url: String?
    
    var body: some View {
        
        WebPageView(url: url)
    }
}

#Preview {
    DetailsView(url: "www.google.com")
}

//struct WebPageView: UIViewRepresentable {
//    
//    let url: String?
//   
//    func makeUIView(context: Context) -> WKWebView{
//        
//        return WKWebView()
//    }
//    
//    func updateUIView(_ uiView: WKWebView, context: Context) {
//        
//        if let safeUrl =  url{
//            
//            if let urlString = URL(string: safeUrl) {
//                
//            let urlRequest = URLRequest(url: urlString)
//                    
//                    uiView.load(urlRequest)
//                }
//            }
//            
//        }
//        
//    }
    

