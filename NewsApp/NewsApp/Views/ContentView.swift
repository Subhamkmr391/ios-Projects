//
//  ContentView.swift
//  NewsApp
//
//  Created by Subham Kumar on 08/03/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var newsManager = NewsManager()
    
    var body: some View {
        
        NavigationView{
            
           List(newsManager.newsArticles){ eachNews in
                
               NavigationLink(destination: NewsDetailsView(url: eachNews.url)) {
                    
                    Text(eachNews.title)
                }
              
                
            }
            .onAppear(perform: {
                newsManager.fetchNews()
            })
            .navigationTitle("Apple Tech News")
            
        }
        
       
    }
}

#Preview {
    ContentView()
}

struct News: Identifiable {
    
    let id: String
    let title: String
}

let news = [News(id: "1", title: "Hello World"),News(id: "2", title: "Hellow world")]
