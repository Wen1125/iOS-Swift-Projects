//
//  NetworkManager.swift
//  H4X0R News
//
//  Created by Wenli Li on 3/6/24.
//

import Foundation

class NetworkManager: ObservableObject {
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try  decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }   
                        } catch {
                            print(error)
                        }
                    }
                } else {
                    print("data error")
                }
            }
            // start the task just created
            task.resume()
        } else {
            print("url not is empty.")
        }
        
    }
}
