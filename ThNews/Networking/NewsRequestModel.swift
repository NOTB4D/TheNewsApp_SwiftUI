//
//  NewsRequestModel.swift
//  ThNews
//
//  Created by Eser Kucuker on 13.08.2022.
//

import Foundation

struct NewsRequestModel : Encodable {
    let country: String?
    
    init(country: String) {
        self.country = country
    }
}
