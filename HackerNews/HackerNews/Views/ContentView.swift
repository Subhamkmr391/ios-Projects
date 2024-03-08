//
//  ContentView.swift
//  HackerNews
//
//  Created by Subham Kumar on 06/03/24.
//

import SwiftUI

struct ContentView: View {
    
  @ObservedObject  var networkManager = NetworkManager()
    
    var body: some View {
        

        NavigationView{
           
//            List{
//                
//                Text("Hello World")
//                Text("Hello World2")
//                
//            }
                
            List(networkManager.posts) { post in
                
                NavigationLink(destination: DetailsView(url: post.url)) {
                    
                    HStack{
                        Text(String(post.points))
                            .padding()
                        Text(post.title)
                            .padding()
                    }
                    

                }
            }
            .onAppear(perform: {
                self.networkManager.fetchData()
            })
                
                .navigationTitle("Hacker News")
            
           
        }
       
    }
}



#Preview {
    ContentView()
}

//struct Post: Identifiable {
//    let id: String
//    let title: String
//}
//    
//    let posts = [Post(id: "1", title: "Hello"),
//                 Post(id: "2", title: "Hola"),
//                 Post(id: "3", title: "Bonjour")]

