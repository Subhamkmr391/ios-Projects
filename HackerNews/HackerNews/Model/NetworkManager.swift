//
//  NetworkManager.swift
//  HackerNews
//
//  Created by Subham Kumar on 07/03/24.
//

import Foundation

class NetworkManager: ObservableObject {
    
   @Published var posts = [Post]()
    
    func fetchData() {
        
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { data, response, error in
                
                
                if error != nil {
                    
                    print(error!)
                }
                else
                {
                    if let safeData = data {
                        
                        let decoder = JSONDecoder()
                        do{
                          let decodedData =  try decoder.decode(Results.self, from: safeData)
                            
                            DispatchQueue.main.async{
                                
                                self.posts = decodedData.hits
                                
                            
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
}
