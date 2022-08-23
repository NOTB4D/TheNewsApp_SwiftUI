//
//  NewsModels.swift
//  ThNews
//
//  Created by Eser Kucuker on 13.08.2022.
//

import Foundation

// swiftlint:disable nesting
enum News {
    
    enum Fetch {
        
        struct Request {
            let country: String
        }
        
        struct Response {
            let article: [Article]
        }
        
        struct ViewModel {
            let news: [News.Fetch.ViewModel.New]
            
            struct New: Identifiable {
                var id = UUID()
                let date: String?
                let title: String?
                let image: String?
            }
        }
        
    }
    
}
// swiftlint:enable nesting
