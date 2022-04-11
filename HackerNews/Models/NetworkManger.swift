//
//  NetworkManger.swift
//  HackerNews
//
//  Created by Marco Mascorro on 4/10/22.
//

import Foundation

class NetworkManger: ObservableObject {
    
    @Published var post = [Hits]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                         let results = try decoder.decode(StorieModel.self, from: safeData)
                            DispatchQueue.main.async {
                                self.post = results.hits
                            }
                        }
                        catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
    
}
