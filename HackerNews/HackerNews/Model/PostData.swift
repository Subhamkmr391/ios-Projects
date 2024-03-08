//
//  PostData.swift
//  HackerNews
//
//  Created by Subham Kumar on 07/03/24.
//

struct Results: Decodable {
    
    let hits: [Post]
    
}

struct Post: Decodable, Identifiable {
    
    //id is a mantory property to conform Indentifiable protocol
    
    
    
    var id: String {
        
        return objectID
    }
    
    
    let objectID: String
    let title: String
    let url: String?
    let points: Int
    
}
