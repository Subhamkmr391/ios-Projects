//
//  NewsManager.swift
//  NewsApp
//
//  Created by Subham Kumar on 08/03/24.
//

import Foundation

class NewsManager: ObservableObject {
    
    @Published var newsArticles = [NewsArticles]()
    
    let url = "https://newsapi.org/v2/everything?q=apple&from=2024-03-07&to=2024-03-07&sortBy=popularity&apiKey=fce06ac4a1fd4f098e5ddf8888c988b9"
    
     func fetchNews(){
        
        let urlString = URL(string: url)
        
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: urlString!) { data, response, error in
            
            if error != nil {     
                
                print(error!)
                
            }
            else {
                
                if let safeData = data {
                    
                    let decoder = JSONDecoder()
                    
                    do{
                        
                        let decodedData = try decoder.decode(NewsData.self, from: safeData)
                        
                        DispatchQueue.main.async{
                            self.newsArticles = decodedData.articles
                            
                            print(self.newsArticles)
                        }
                    }
                    catch{
                        
                        print(error)
                    }
                    
                }
            }
            
        }
        
        task.resume()
    }
}
