//
//  NewsData.swift
//  NewsApp
//
//  Created by Subham Kumar on 08/03/24.
//

import Foundation

struct NewsData: Decodable {
    
    let articles: [NewsArticles]
    
    
}


struct NewsArticles: Decodable, Identifiable {
    
    
    var id: String {
        
       return title
        
    }
    
    let author: String?
    let title: String
    let description: String
    let url: String
    
}
