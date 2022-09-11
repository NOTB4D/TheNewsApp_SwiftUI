//
//  NewsDetailModel.swift
//  ThNews
//
//  Created by Eser Kucuker on 17.08.2022.
//

import Foundation

enum NewsDetail {
    
    enum Fetch {
        
        struct Request {
            
        }
        
        struct Response {
            let article : Article?
        }
        
        struct ViewModel:Identifiable {
            var id = UUID()
            var image: String?
            var title: String?
            var description: String?
        }
        
    }
    
}
